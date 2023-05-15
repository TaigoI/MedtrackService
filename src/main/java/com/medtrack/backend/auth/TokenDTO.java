package com.medtrack.backend.auth;

import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class TokenDTO {


    private String token;
    private Long id;
    private String username;
    private String email;
    private String name;
    private List<GrantedAuthority> authorities;

    public TokenDTO(MedtrackUserDetails userDetails, String token) {
        this.id = userDetails.getId();
        this.name = userDetails.getName();
        this.username = userDetails.getUsername();
        this.email = userDetails.getEmail();
        this.authorities = new ArrayList<>(userDetails.getAuthorities());
        this.token = token;
    }

}
