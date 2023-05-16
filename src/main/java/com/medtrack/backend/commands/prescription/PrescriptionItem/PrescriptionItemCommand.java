package com.medtrack.backend.commands.Prescription.PrescriptionItem;

import com.medtrack.backend.enums.TimeUnit;
import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PrescriptionItemCommand {

    private Long medicationPresentationDosageId;
    private Integer doseAmount;
    private Integer interval;
    private TimeUnit intervalUnit;
    private Integer occurrences;
    private String comments;

}
