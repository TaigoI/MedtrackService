package com.medtrack.backend.commands.Prescription;

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
