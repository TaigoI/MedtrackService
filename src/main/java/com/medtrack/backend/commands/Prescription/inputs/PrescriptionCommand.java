package com.medtrack.backend.commands.Prescription.inputs;

import com.medtrack.backend.commands.PrescriptionItem.inputs.PrescriptionItemCommand;
import lombok.*;

import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PrescriptionCommand {

    private String title;
    private List<PrescriptionItemCommand> items;

}
