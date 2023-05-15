package com.medtrack.backend.services.dataset;

import com.medtrack.backend.commands.dataset.Medication.MedicationCommand;
import com.medtrack.backend.entities.dataset.Medication;
import com.medtrack.backend.repositories.dataset.MedicationRepository;
import com.medtrack.backend.util.Searchable;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MedicationService {

    private final MedicationRepository repository;

    public Page<Medication> search(String medication, String presentation, String dosage, Pageable pageable) {
        return repository.searchAssociated(
                medication == null ? null : Searchable.toLike(medication),
                presentation == null ? null : Searchable.toLike(presentation),
                dosage == null ? null : Searchable.toLike(dosage),
                dosage == null ? "" : Searchable.toSimilarity(dosage),
                pageable
        );
    }

    public Medication findById(Long id) throws Exception {
        return repository.findById(id).orElseThrow(Exception::new);
    }

    public Medication create(MedicationCommand command) {
        Medication entity = new Medication();
        return update(entity, command);
    }

    public Medication updateById(Long id, MedicationCommand command) throws Exception {
        Medication entity = findById(id);
        return update(entity, command);
    }

    public Medication update(Medication entity, MedicationCommand command) {
        entity.updateWithCommand(command);
        return repository.saveAndFlush(entity);
    }

}
