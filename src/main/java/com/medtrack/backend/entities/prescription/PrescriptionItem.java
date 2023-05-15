package com.medtrack.backend.entities.prescription;

import com.medtrack.backend.commands.Prescription.PrescriptionItem.PrescriptionItemCommand;
import com.medtrack.backend.entities.dataset.MedicationPresentationDosage;
import com.medtrack.backend.enums.TimeUnit;
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
    private Long id;

    @ManyToOne
    @JoinColumn(name = "prescriptionid")
    private Prescription prescription;

    @ManyToOne
    @JoinColumn(name = "medicationpresentationdosageid")
    private MedicationPresentationDosage medicationPresentationDosage;

    private Integer doseAmount;

    private Integer interval;
    @Enumerated(EnumType.STRING)
    private TimeUnit intervalUnit;

    private Integer occurrences;
    private String comments;

    public PrescriptionItem(Prescription prescription, PrescriptionItemCommand command) {
        this.prescription = prescription;
        this.medicationPresentationDosage = MedicationPresentationDosage.builder().id(command.getMedicationPresentationDosageId()).build();
        this.doseAmount = command.getDoseAmount();
        this.interval = command.getInterval();
        this.intervalUnit = command.getIntervalUnit();
        this.occurrences = command.getOccurrences();
        this.comments = command.getComments();
    }

}
