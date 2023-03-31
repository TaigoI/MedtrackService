package com.medtrack.backend.commands.Prescription;

import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PrescriptionItemCommand {

    private Long medicationPresentationId;

    private Integer dosage;
    private Integer frequency; //in minutes
    private Integer duration; //in days

}
