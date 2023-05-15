package com.medtrack.backend.commands.user;

import com.medtrack.backend.entities.user.User;
import lombok.*;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {

    private Long id;
    private String name;

    private String cpf;
    private String email;

    private String gender;
    private String councilRegistration;
    private LocalDate birthdate;
    private String mobilePhone;
    private String businessPhone;

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public UserDTO(User entity) {
        this.id = entity.getId();
        this.name = entity.getName();

        this.cpf = entity.getCpf();
        this.email = entity.getEmail();

        this.gender = entity.getGender();
        this.councilRegistration = entity.getCouncilRegistration();
        this.birthdate = entity.getBirthdate();
        this.mobilePhone = entity.getMobilePhone();
        this.businessPhone = entity.getBusinessPhone();

        this.createdAt = entity.getCreatedAt();
        this.updatedAt = entity.getUpdatedAt();
    }

}
