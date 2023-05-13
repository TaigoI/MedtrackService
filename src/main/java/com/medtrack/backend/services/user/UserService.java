package com.medtrack.backend.services.user;

import com.medtrack.backend.auth.JwtService;
import com.medtrack.backend.auth.LoginCommand;
import com.medtrack.backend.auth.MedtrackUserDetails;
import com.medtrack.backend.auth.TokenDTO;
import com.medtrack.backend.commands.user.CreateUserCommand;
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
public class UserService {

    private final UserRepository repository;
    private final PasswordEncoder passwordEncoder;

    public User findById(Long id) throws Exception {
        return repository.findById(id).orElseThrow(Exception::new);
    }

    public User create(CreateUserCommand command) {
        User user = new User();
        user.updateEncodedPassword(passwordEncoder.encode(command.getPassword()));
        return update(user, command);
    }

    public User updateById(Long id, CreateUserCommand command) throws Exception {
        User user = findById(id);
        return update(user, command);
    }

    public User update(User entity, CreateUserCommand command) {
        entity.updateWithCommand(command);
        return repository.saveAndFlush(entity);
    }

}
