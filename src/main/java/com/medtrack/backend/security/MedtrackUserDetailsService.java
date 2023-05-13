package com.medtrack.backend.security;

import com.medtrack.backend.commands.User.UserDetailsDTO;
import com.medtrack.backend.entities.user.User;
import com.medtrack.backend.repositories.user.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class MedtrackUserDetailsService implements UserDetailsService {

    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> searchUser = userRepository.findByCpfOrEmail(username);
        if (searchUser.isEmpty()) {
            throw new UsernameNotFoundException("");
        }

        User user = searchUser.get();
        return new UserDetailsDTO(user);
    }
}
