package com.medtrack.backend.controllers.user;

import com.medtrack.backend.auth.LoginCommand;
import com.medtrack.backend.commands.User.CreateUserCommand;
import com.medtrack.backend.services.user.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
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
    public ResponseEntity<?> authenticateAndGetToken(@RequestBody LoginCommand command) {
        return ResponseEntity.ok(service.login(command));
    }

    @PostMapping("/signup")
    public ResponseEntity<?> authenticateAndGetToken(@RequestBody CreateUserCommand command) {
        return ResponseEntity.ok(service.signup(command));
    }

}
