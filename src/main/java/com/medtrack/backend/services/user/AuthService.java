package com.medtrack.backend.services.user;

import com.medtrack.backend.auth.JwtService;
import com.medtrack.backend.auth.LoginCommand;
import com.medtrack.backend.auth.MedtrackUserDetails;
import com.medtrack.backend.auth.TokenDTO;
import com.medtrack.backend.commands.User.CreateUserCommand;
import com.medtrack.backend.entities.user.User;
import com.medtrack.backend.exception.UserAlreadyExistsException;
import com.medtrack.backend.exception.UserNotFoundException;
import com.medtrack.backend.repositories.user.UserRepository;
import com.medtrack.backend.util.Searchable;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashMap;

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
            throw new UserNotFoundException("Não foi possível autenticar o usuário.", new HashMap<>() {{
                put("username", command.getUsername());
            }});
        }
    }

    public User signup(CreateUserCommand command) {
        command.setCpf(Searchable.toSimilarity(command.getCpf()));
        repository
                .findByCpfOrEmail(command.getCpf(), command.getEmail())
                .ifPresent((User user) -> {
                    throw new UserAlreadyExistsException(
                            "Usuário já cadastrado com Cpf '" + user.getCpf() + "' e Email '" + user.getEmail() + "'.",
                            new HashMap<>() {{
                                put("cpf", user.getCpf());
                                put("email", user.getEmail());
                            }}
                    );
                });

        User user = new User();
        user.updateWithCommand(command);
        user.updateEncodedPassword(passwordEncoder.encode(command.getPassword()));
        return repository.saveAndFlush(user);
    }


    //TODO
    //public void updatePassword() {}

}
