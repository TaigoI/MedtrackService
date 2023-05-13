package com.medtrack.backend.entities.dataset;

import com.medtrack.backend.entities.dataset.Company;
import com.medtrack.backend.entities.dataset.MedicationPresentation;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "medication_company_presentation")
public class MedicationPresentationCompany {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "medicationpresentationid")
    private MedicationPresentation medicationPresentation;

    @ManyToOne
    @JoinColumn(name = "companyid")
    private Company company;

}
