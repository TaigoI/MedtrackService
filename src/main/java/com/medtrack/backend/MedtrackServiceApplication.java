package com.medtrack.backend;

import com.medtrack.backend.auth.JwtConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@EnableConfigurationProperties(JwtConfiguration.class)
public class MedtrackServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(MedtrackServiceApplication.class, args);
    }

}
