package com.medtrack.backend.auth;

import com.medtrack.backend.entities.user.User;
import com.medtrack.backend.repositories.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.Optional;

@Component
public class MedtrackUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository repository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> userOptional = repository.findByCpfOrEmail(username);
        if (userOptional.isEmpty()) {
            throw new UsernameNotFoundException("user " + username + " not found.");
        }

        User user = userOptional.get();
        return new MedtrackUserDetails(user);
    }
}
