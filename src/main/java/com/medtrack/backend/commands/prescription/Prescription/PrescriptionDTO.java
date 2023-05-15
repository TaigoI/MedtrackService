package com.medtrack.backend.commands.Prescription.Prescription;

import com.medtrack.backend.commands.Prescription.PrescriptionItem.PrescriptionItemDTO;
import com.medtrack.backend.commands.user.UserDTO;
import com.medtrack.backend.entities.prescription.Prescription;
import lombok.*;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PrescriptionDTO {

    private Long id;
    private String title;
    private String description;
    private UserDTO user;
    private LocalDateTime createdAt;

    private List<PrescriptionItemDTO> items;

    private Boolean template;
    private String templateTitle;
    private String templateDescription;

    public PrescriptionDTO(Prescription entity) {
        this.id = entity.getId();
        this.title = entity.getTitle();
        this.description = entity.getDescription();
        this.user = new UserDTO(entity.getUser());
        this.createdAt = entity.getCreatedAt();

        this.items = entity.getItemList().stream().map(PrescriptionItemDTO::new).collect(Collectors.toList());

        this.template = entity.getTemplate();
        this.templateTitle = entity.getTemplateTitle();
        this.templateDescription = entity.getTemplateDescription();
    }

}
