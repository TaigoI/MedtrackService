package com.medtrack.backend.commands.user;

import lombok.*;

import java.time.LocalDate;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UpdateUserCommand {

    private String name;
    private String cpf;
    private String email;
    private String gender;
    private String councilRegistration;
    private LocalDate birthdate;
    private String mobilePhone;
    private String businessPhone;

}
