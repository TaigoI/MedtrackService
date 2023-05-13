package com.medtrack.backend.auth;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@Data
@ConfigurationProperties(prefix = "jwt")
public class JwtConfiguration {
    private String securityKey;
    private Long expiresIn;
    private String prefix;
    private String header;
}
