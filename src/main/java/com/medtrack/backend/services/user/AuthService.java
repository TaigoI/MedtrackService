package com.medtrack.backend.services.user;

import com.medtrack.backend.auth.JwtService;
import com.medtrack.backend.auth.LoginCommand;
import com.medtrack.backend.auth.MedtrackUserDetails;
import com.medtrack.backend.auth.TokenDTO;
import com.medtrack.backend.commands.User.CreateUserCommand;
import com.medtrack.backend.entities.user.User;
import com.medtrack.backend.repositories.user.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthService {

    private final JwtService jwtService;
    private final AuthenticationManager authenticationManager;
    private final PasswordEncoder passwordEncoder;
    private final UserRepository repository;

    public TokenDTO login(LoginCommand command) {
        Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(command.getUsername(), command.getPassword()));
        if (authentication.isAuthenticated()) {
            MedtrackUserDetails userDetails = (MedtrackUserDetails) authentication.getPrincipal();
            return new TokenDTO(userDetails, jwtService.generateToken(userDetails));
        } else {
            throw new UsernameNotFoundException("invalid user request!");
        }
    }

    public User signup(CreateUserCommand command) {
        User user = new User();
        user.updateWithCommand(command);
        user.updateEncodedPassword(passwordEncoder.encode(command.getPassword()));
        return repository.saveAndFlush(user);
    }


    //TODO
    //public void updatePassword() {}

}
