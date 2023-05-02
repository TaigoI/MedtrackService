package com.medtrack.backend.entities;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PrescriptionItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long prescriptionItemId;

    @ManyToOne
    @JoinColumn(name = "prescriptionid")
    private Prescription prescription;

    @ManyToOne
    @JoinColumn(name = "mpcid")
    private MedicationPresentationCompany medicationPresentationCompany;

    private Integer dosage;
    private Integer frequency; //in minutes
    private Integer duration; //in days

}
