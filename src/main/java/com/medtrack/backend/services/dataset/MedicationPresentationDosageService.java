package com.medtrack.backend.services.dataset;

import com.medtrack.backend.commands.dataset.MedicationPresentationDosage.MedicationPresentationDosageDTO;
import com.medtrack.backend.entities.dataset.MedicationPresentationDosage;
import com.medtrack.backend.repositories.dataset.MedicationPresentationDosageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MedicationPresentationDosageService {

    private final MedicationPresentationDosageRepository repository;

    public MedicationPresentationDosage findById(Long id) throws Exception {
        return repository.findById(id).orElseThrow(Exception::new);
    }

    public MedicationPresentationDosageDTO getById(Long id) throws Exception {
        return new MedicationPresentationDosageDTO(
                repository
                        .findById(id)
                        .orElseThrow(Exception::new)
        );
    }

    public MedicationPresentationDosageDTO getByRelationshipIds(Long medicationId, Long presentationId, Long dosageId) throws Exception {
        return new MedicationPresentationDosageDTO(
                repository
                        .findByMedicationIdPresentationIdAndDosageId(medicationId, presentationId, dosageId)
                        .orElseThrow(Exception::new)
        );
    }

}
