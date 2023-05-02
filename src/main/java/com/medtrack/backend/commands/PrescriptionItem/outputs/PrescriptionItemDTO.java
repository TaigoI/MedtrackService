package com.medtrack.backend.commands.PrescriptionItem.outputs;

import com.medtrack.backend.entities.PrescriptionItem;
import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PrescriptionItemDTO {

  private Long prescriptionItemId;
  private Integer dosage;
  private Integer frequency; //in minutes
  private Integer duration; //in days

  private String medicationName;
  private String presentationType;
  private Integer doseAmount;
  private String doseUnit;

  public PrescriptionItemDTO(PrescriptionItem item){
    this.prescriptionItemId = item.getPrescriptionItemId();
    this.dosage = item.getDosage();
    this.frequency = item.getFrequency();
    this.duration = item.getDuration();
    //this.medicationName = item.getMedicationPresentation().getMedication().getName();
    //this.presentationType = item.getMedicationPresentation().getPresentationType();
    //this.doseAmount = item.getMedicationPresentation().getDoseAmount();
    //this.doseUnit = item.getMedicationPresentation().getDoseUnit();
  }


}
