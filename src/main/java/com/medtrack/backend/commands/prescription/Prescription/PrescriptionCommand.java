package com.medtrack.backend.commands.prescription.Prescription;

import com.medtrack.backend.commands.prescription.PrescriptionItem.PrescriptionItemCommand;
import lombok.*;

import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PrescriptionCommand {

    private String title;
    private String description;

    private Boolean template;
    private String templateTitle;
    private String templateDescription;

    private List<PrescriptionItemCommand> items;

}
