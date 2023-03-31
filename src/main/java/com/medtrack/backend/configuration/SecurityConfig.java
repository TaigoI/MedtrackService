package com.medtrack.backend.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.web.cors.CorsConfiguration;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

  //TODO: static final CorsConfiguration corsConfig = new CorsConfiguration().setAllowedOriginPatterns().setAllowedMethods()

  @Bean
  public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
    http
      .cors().configurationSource(request -> new CorsConfiguration().applyPermitDefaultValues())
      .and()
      .csrf().disable()
      .authorizeHttpRequests()
      .anyRequest().permitAll()
      .and()
      .httpBasic().disable();
    return http.build();
  }

}
