package com.medtrack.backend.commands.dataset.Dosage;

import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class DosageCommand {

    private String amount;
    private String unit;

}
