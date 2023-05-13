package com.medtrack.backend.commands.dataset.MedicationPresentation;

import com.medtrack.backend.commands.dataset.Medication.MedicationDTO;
import com.medtrack.backend.commands.dataset.Presentation.PresentationDTO;
import com.medtrack.backend.entities.dataset.MedicationPresentation;
import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MedicationPresentationDTO {

    private Long id;
    private MedicationDTO medication;
    private PresentationDTO presentation;
    private String dosageAmount;
    private String dosageUnit;

    public MedicationPresentationDTO(MedicationPresentation entity) {
        this.id = entity.getId();
        this.medication = new MedicationDTO(entity.getMedication());
        this.presentation = new PresentationDTO(entity.getPresentation());
        this.dosageAmount = entity.getDosageAmount();
        this.dosageUnit = entity.getDosageUnit();
    }

}
