package com.medtrack.backend.entities.dataset;

import com.medtrack.backend.entities.dataset.Medication;
import com.medtrack.backend.entities.dataset.Presentation;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "medication_presentation")
public class MedicationPresentation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "medicationid")
    private Medication medication;

    @ManyToOne
    @JoinColumn(name = "presentationid")
    private Presentation presentation;

    @Column(name = "dosage_amount")
    private String dosageAmount;

    @Column(name = "dosage_unit")
    private String dosageUnit;

}
