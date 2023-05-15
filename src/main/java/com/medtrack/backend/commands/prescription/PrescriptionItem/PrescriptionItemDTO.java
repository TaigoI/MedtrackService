package com.medtrack.backend.commands.Prescription.PrescriptionItem;

import com.medtrack.backend.commands.dataset.MedicationPresentationDosage.MedicationPresentationDosageDTO;
import com.medtrack.backend.entities.prescription.PrescriptionItem;
import com.medtrack.backend.enums.TimeUnit;
import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PrescriptionItemDTO {

    private Long id;
    private Long prescriptionId;
    private MedicationPresentationDosageDTO medicationPresentation;
    private Integer doseAmount;
    private Integer interval;
    private TimeUnit intervalUnit;
    private Integer occurrences;
    private String comments;

    public PrescriptionItemDTO(PrescriptionItem entity) {
        this.prescriptionId = entity.getPrescription().getId();
        this.medicationPresentation = new MedicationPresentationDosageDTO(entity.getMedicationPresentationDosage());
        this.doseAmount = entity.getDoseAmount();
        this.interval = entity.getInterval();
        this.intervalUnit = entity.getIntervalUnit();
        this.occurrences = entity.getOccurrences();
        this.comments = entity.getComments();
    }


}
