package com.medtrack.backend.auth;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
@RequiredArgsConstructor
public class JwtService {

    private final JwtConfiguration jwtConfiguration;

    public DecodedJWT decodeToken(String token) {
        return JWT.require(Algorithm.HMAC512(jwtConfiguration.getSecurityKey()))
                .build()
                .verify(token);
    }

    public String generateToken(MedtrackUserDetails userDetails) {
        return JWT.create()
                .withSubject(userDetails.getUsername())
                .withClaim("id", userDetails.getId())
                .withClaim("username", userDetails.getUsername())
                .withClaim("email", userDetails.getEmail())
                .withClaim("name", userDetails.getName())
                .withArrayClaim("authorities", userDetails.getAuthorities().stream().map(GrantedAuthority::getAuthority).toArray(String[]::new))
                .withIssuedAt(new Date(System.currentTimeMillis()))
                .withExpiresAt(new Date(System.currentTimeMillis() + jwtConfiguration.getExpiresIn()))
                .sign(Algorithm.HMAC512(jwtConfiguration.getSecurityKey()));
    }

}
