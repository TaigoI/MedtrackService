package com.medtrack.backend.services;

import com.medtrack.backend.commands.Prescription.Prescription.PrescriptionCommand;
import com.medtrack.backend.commands.Prescription.Prescription.PrescriptionDTO;
import com.medtrack.backend.commands.Prescription.PrescriptionItem.PrescriptionItemCommand;
import com.medtrack.backend.entities.dataset.MedicationPresentationDosage;
import com.medtrack.backend.entities.prescription.Prescription;
import com.medtrack.backend.entities.prescription.PrescriptionItem;
import com.medtrack.backend.entities.user.User;
import com.medtrack.backend.repositories.dataset.MedicationPresentationDosageRepository;
import com.medtrack.backend.repositories.prescription.PrescriptionItemRepository;
import com.medtrack.backend.repositories.prescription.PrescriptionRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PrescriptionService {

    private final PrescriptionRepository repository;
    private final PrescriptionItemRepository itemRepository;
    private final MedicationPresentationDosageRepository medicationPresentationDosageRepository;

    public Page<PrescriptionDTO> search(Long userId, String value, Boolean templatesOnly, Pageable pageable) {
        return repository.searchByTitle(userId, value, templatesOnly, pageable).map(PrescriptionDTO::new);
    }

    public PrescriptionDTO findById(Long prescriptionId) throws Exception {
        return repository.findById(prescriptionId).map(PrescriptionDTO::new).orElseThrow(Exception::new);
    }

    @Transactional
    public PrescriptionDTO create(PrescriptionCommand command, Long userId) throws Exception {
        Prescription prescription = new Prescription(command, User.builder().id(userId).build());
        repository.saveAndFlush(prescription);

        for (PrescriptionItemCommand itemCommand : command.getItems()) {
            MedicationPresentationDosage mpd = medicationPresentationDosageRepository.findById(itemCommand.getMedicationPresentationDosageId()).orElseThrow(Exception::new);
            prescription.getItemList().add(new PrescriptionItem(prescription, mpd, itemCommand));
        }

        itemRepository.saveAllAndFlush(prescription.getItemList());
        return new PrescriptionDTO(prescription);
    }

}
