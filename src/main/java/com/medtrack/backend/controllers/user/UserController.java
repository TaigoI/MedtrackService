package com.medtrack.backend.controllers.user;

import com.medtrack.backend.auth.MedtrackUserDetails;
import com.medtrack.backend.entities.user.User;
import com.medtrack.backend.services.user.UserService;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SecurityRequirement(name = "bearerAuth")
@RequestMapping("/user")
@RequiredArgsConstructor
public class UserController {

    private final UserService service;

    @GetMapping
    public User getCurrentUser(UsernamePasswordAuthenticationToken token) throws Exception {
        MedtrackUserDetails userDetails = (MedtrackUserDetails) token.getPrincipal();
        return service.findById(userDetails.getId());
    }

}
