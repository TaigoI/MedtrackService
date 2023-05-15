package com.medtrack.backend.auth;

import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class LoginCommand {

    private String username;
    private String password;

}
