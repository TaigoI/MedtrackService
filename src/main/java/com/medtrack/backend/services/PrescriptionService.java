package com.medtrack.backend.services;

import com.medtrack.backend.commands.Prescription.Prescription.PrescriptionDTO;
import com.medtrack.backend.entities.prescription.Prescription;
import com.medtrack.backend.entities.prescription.PrescriptionItem;
import com.medtrack.backend.entities.user.User;
import com.medtrack.backend.repositories.prescription.PrescriptionItemRepository;
import com.medtrack.backend.repositories.prescription.PrescriptionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PrescriptionService {

    private final PrescriptionRepository repository;
    private final PrescriptionItemRepository itemRepository;

    public Page<PrescriptionDTO> search(Long userId, String value, Boolean templatesOnly, Pageable pageable) {
        return repository.searchByTitle(userId, value, templatesOnly, pageable).map(PrescriptionDTO::new);
    }

    public PrescriptionDTO findById(Long prescriptionId) throws Exception {
        return repository.findById(prescriptionId).map(PrescriptionDTO::new).orElseThrow(Exception::new);
    }

    public PrescriptionDTO create(com.medtrack.backend.commands.prescription.Prescription.PrescriptionCommand command, Long userId) {
        Prescription prescription = new Prescription();
        prescription.setTitle(command.getTitle());
        prescription.setUser(User.builder().id(userId).build());
        repository.saveAndFlush(prescription);

        for (com.medtrack.backend.commands.prescription.PrescriptionItem.PrescriptionItemCommand itemCommand : command.getItems()) {
            PrescriptionItem prescriptionItem = new PrescriptionItem(prescription, itemCommand);
            prescription.getItemList().add(itemRepository.saveAndFlush(prescriptionItem));
        }

        return new PrescriptionDTO(prescription);
    }

    //TODO:
    /*public PrescriptionDTO update(Long prescriptionId, PrescriptionCommand command){
        return new PrescriptionDTO();
    }*/

}
