package com.medtrack.backend.controllers.user;

import com.medtrack.backend.auth.LoginCommand;
import com.medtrack.backend.auth.TokenDTO;
import com.medtrack.backend.commands.User.CreateUserCommand;
import com.medtrack.backend.entities.user.User;
import com.medtrack.backend.services.user.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthController {

    private final AuthService service;

    @PostMapping("/login")
    public TokenDTO authenticateAndGetToken(@RequestBody LoginCommand command) {
        return service.login(command);
    }

    @PostMapping("/signup")
    public User authenticateAndGetToken(@RequestBody CreateUserCommand command) {
        return service.signup(command);
    }

}
