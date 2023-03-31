package com.medtrack.backend.entities;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MedicationPresentation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long medicationPresentationId;

    @ManyToOne
    @JoinColumn(name = "medicationId")
    private Medication medication;

    private String presentationType;

    private Integer doseAmount;

    private String doseUnit;

}
