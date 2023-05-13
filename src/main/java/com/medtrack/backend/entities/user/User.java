package com.medtrack.backend.entities.user;

import com.medtrack.backend.commands.user.CreateUserCommand;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "users", schema = "public")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String cpf;
    private String email;
    private String password;

    private String gender;
    private String councilRegistration;
    private LocalDate birthdate;
    private String mobilePhone;
    private String businessPhone;

    @CreationTimestamp
    private LocalDateTime createdAt;

    @UpdateTimestamp
    private LocalDateTime updatedAt;

    public void updateWithCommand(CreateUserCommand command) {
        this.name = command.getName();
        this.cpf = command.getCpf();
        this.email = command.getEmail();
        this.gender = command.getGender();
        this.councilRegistration = command.getCouncilRegistration();
        this.birthdate = command.getBirthdate();
        this.mobilePhone = command.getMobilePhone();
        this.businessPhone = command.getBusinessPhone();
    }

    public void updateEncodedPassword(String encodedPassword) {
        this.password = encodedPassword;
    }

}
