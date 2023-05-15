package com.medtrack.backend.commands.dataset.Presentation;

import com.medtrack.backend.entities.dataset.Presentation;
import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PresentationDTO {

    private Long id;
    private String name;
    private String searchable;

    public PresentationDTO(Presentation entity) {
        this.id = entity.getId();
        this.name = entity.getName();
        this.searchable = entity.getSearchable();
    }

}
