package com.medtrack.backend.commands.dataset.Medication;

import com.medtrack.backend.entities.dataset.Medication;
import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MedicationDTO {

    private Long id;
    private String name;
    private String searchable;

    public MedicationDTO(Medication entity) {
        this.id = entity.getId();
        this.name = entity.getName();
        this.searchable = entity.getSearchable();
    }

}
