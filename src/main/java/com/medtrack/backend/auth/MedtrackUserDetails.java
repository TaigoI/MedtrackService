package com.medtrack.backend.auth;

import com.medtrack.backend.entities.user.User;
import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
@RequiredArgsConstructor
public class MedtrackUserDetails implements UserDetails {


    private Long id;
    private String username;
    private String email;
    private String name;
    private String password;
    private String mobilePhone;
    private String businessPhone;
    private List<GrantedAuthority> authorities;

    public MedtrackUserDetails(User user) {
        id = user.getId();
        name = user.getName();
        password = user.getPassword();
        username = user.getCpf();
        email = user.getEmail();
        mobilePhone = user.getMobilePhone();
        businessPhone = user.getBusinessPhone();
        authorities = Collections.singletonList(new SimpleGrantedAuthority("user"));
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
