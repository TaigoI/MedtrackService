package com.medtrack.backend.commands.dataset.Dosage;

import com.medtrack.backend.entities.dataset.Dosage;
import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class DosageDTO {

    private Long id;
    private String amount;
    private String unit;
    private String searchable;

    public DosageDTO(Dosage entity) {
        this.id = entity.getId();
        this.amount = entity.getAmount();
        this.unit = entity.getUnit();
        this.searchable = entity.getSearchable();
    }

}
