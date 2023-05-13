package com.medtrack.backend.services;

import com.medtrack.backend.commands.Medication.inputs.MedicationCommand;
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

    public Page<Medication> search(String value, Pageable pageable) {
        return repository.findBySearchableContaining(Searchable.toLike(value), Searchable.toSimilarity(value), pageable);
    }

    public Medication findById(Long id) throws Exception {
        return repository.findById(id).orElseThrow(Exception::new);
    }

    public Medication create(MedicationCommand command) {
        Medication medication = new Medication();
        return update(medication, command);
    }

    public Medication updateById(Long id, MedicationCommand command) throws Exception {
        Medication medication = findById(id);
        return update(medication, command);
    }

    public Medication update(Medication medication, MedicationCommand command) {
        medication.setName(command.getName());
        medication.setSearchable(Searchable.toLike(command.getName()));
        return repository.saveAndFlush(medication);
    }

}
