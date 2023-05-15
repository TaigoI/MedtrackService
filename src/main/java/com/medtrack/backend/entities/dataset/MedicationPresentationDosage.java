package com.medtrack.backend.entities.dataset;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "medication_presentation_dosage")
public class MedicationPresentationDosage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "medicationid")
    private Medication medication;

    @ManyToOne
    @JoinColumn(name = "presentationid")
    private Presentation presentation;

    @ManyToOne
    @JoinColumn(name = "dosageid")
    private Dosage dosage;

    @Column(name = "dosage_amount")
    private String dosageAmount;

    @Column(name = "dosage_unit")
    private String dosageUnit;

}
