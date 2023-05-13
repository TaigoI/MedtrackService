package com.medtrack.backend.entities.prescription;

import com.medtrack.backend.commands.prescription.PrescriptionItem.PrescriptionItemCommand;
import com.medtrack.backend.entities.dataset.MedicationPresentation;
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
    @JoinColumn(name = "prescription_id")
    private Prescription prescription;

    @ManyToOne
    @JoinColumn(name = "medication_presentation_id")
    private MedicationPresentation medicationPresentation;

    private Integer doseAmount;

    private Integer interval;
    @Enumerated(EnumType.STRING)
    private TimeUnit intervalUnit;

    private Integer occurrences;
    private String comments;

    public PrescriptionItem(Prescription prescription, PrescriptionItemCommand command) {
        this.prescription = prescription;
        this.medicationPresentation = MedicationPresentation.builder().id(command.getMedicationPresentationId()).build();
        this.doseAmount = command.getDoseAmount();
        this.interval = command.getInterval();
        this.intervalUnit = command.getIntervalUnit();
        this.occurrences = command.getOccurrences();
        this.comments = command.getComments();
    }

}
