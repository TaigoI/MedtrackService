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

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "medicationid")
    private Medication medication;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "presentationid")
    private Presentation presentation;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "dosageid")
    private Dosage dosage;

}
