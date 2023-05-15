package com.medtrack.backend.entities.dataset;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "company_medication_presentation_dosage")
public class CompanyMedicationPresentationDosage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "medicationpresentationdosageid")
    private MedicationPresentationDosage medicationPresentationDosage;

    @ManyToOne
    @JoinColumn(name = "companyid")
    private Company company;

}
