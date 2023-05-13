package com.medtrack.backend.controllers.user;

import com.medtrack.backend.auth.LoginCommand;
import com.medtrack.backend.auth.TokenDTO;
import com.medtrack.backend.services.user.AuthService;
import com.medtrack.backend.services.user.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthController {

    private final AuthService service;

    @PostMapping("/login")
    public TokenDTO authenticateAndGetToken(@RequestBody LoginCommand command) {
        return service.login(command);
    }

}
