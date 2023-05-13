package com.medtrack.backend.commands.Prescription.outputs;

import com.medtrack.backend.commands.PrescriptionItem.outputs.PrescriptionItemDTO;
import com.medtrack.backend.entities.prescription.Prescription;
import lombok.*;

import java.util.List;
import java.util.stream.Collectors;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PrescriptionDTO {

    private String title;
    private List<PrescriptionItemDTO> items;

    public PrescriptionDTO(Prescription prescription){
      this.title = prescription.getTitle();
      this.items = prescription.getItemList().stream().map(PrescriptionItemDTO::new).collect(Collectors.toList());
    }

}
