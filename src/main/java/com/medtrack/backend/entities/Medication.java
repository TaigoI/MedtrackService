package com.medtrack.backend.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Medication {

    @Id
    private Long medicationId; //from process number, not auto-generated

    /*@ManyToOne
    @JoinColumn(name = "medicationGroupId")
    private MedicationGroup medicationGroup;*/

    private String name;
    private String company;

}
