package com.medtrack.backend.commands.dataset.MedicationPresentationDosage;

import com.medtrack.backend.commands.dataset.Medication.MedicationDTO;
import com.medtrack.backend.commands.dataset.Presentation.PresentationDTO;
import com.medtrack.backend.entities.dataset.MedicationPresentationDosage;
import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MedicationPresentationDosageDTO {

    private Long id;
    private MedicationDTO medication;
    private PresentationDTO presentation;
    private String dosageAmount;
    private String dosageUnit;

    public MedicationPresentationDosageDTO(MedicationPresentationDosage entity) {
        this.id = entity.getId();
        this.medication = new MedicationDTO(entity.getMedication());
        this.presentation = new PresentationDTO(entity.getPresentation());
        this.dosageAmount = entity.getDosageAmount();
        this.dosageUnit = entity.getDosageUnit();
    }

}
