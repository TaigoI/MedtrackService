package com.medtrack.backend.services;

import com.medtrack.backend.commands.Prescription.inputs.PrescriptionCommand;
import com.medtrack.backend.commands.Prescription.outputs.PrescriptionDTO;
import com.medtrack.backend.commands.PrescriptionItem.inputs.PrescriptionItemCommand;
import com.medtrack.backend.entities.MedicationPresentation;
import com.medtrack.backend.entities.Prescription;
import com.medtrack.backend.entities.PrescriptionItem;
import com.medtrack.backend.repositories.PrescriptionItemRepository;
import com.medtrack.backend.repositories.PrescriptionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PrescriptionService {

    private final PrescriptionRepository repository;
    private final PrescriptionItemRepository itemRepository;

    public Page<PrescriptionDTO> search(String value, Pageable pageable) {
        return repository.searchByTitle(value, pageable).map(PrescriptionDTO::new);
    }

    public PrescriptionDTO findById(Long prescriptionId) throws Exception {
        return repository.findById(prescriptionId).map(PrescriptionDTO::new).orElseThrow(Exception::new);
    }

    public PrescriptionDTO create(PrescriptionCommand command){
        Prescription prescription = new Prescription();
        prescription.setTitle(command.getTitle());
        repository.saveAndFlush(prescription);

        for (PrescriptionItemCommand item : command.getItems()) {
            PrescriptionItem prescriptionItem = new PrescriptionItem();
            prescriptionItem.setPrescription(prescription);
            prescriptionItem.setDuration(item.getDuration());
            prescriptionItem.setDosage(item.getDosage());
            prescriptionItem.setFrequency(item.getFrequency());
            prescriptionItem.setMedicationPresentation(MedicationPresentation.builder().medicationPresentationId(item.getMedicationPresentationId()).build());

            prescription.getItemList().add(prescriptionItem);
            itemRepository.saveAndFlush(prescriptionItem);
        }

        return new PrescriptionDTO(prescription);
    }

    //TODO:
    public PrescriptionDTO update(Long prescriptionId, PrescriptionCommand command){
        return new PrescriptionDTO();
    }

}
