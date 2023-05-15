package com.medtrack.backend.services.dataset;

import com.medtrack.backend.commands.dataset.Dosage.DosageCommand;
import com.medtrack.backend.entities.dataset.Dosage;
import com.medtrack.backend.repositories.dataset.DosageRepository;
import com.medtrack.backend.util.Searchable;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class DosageService {

    private final DosageRepository repository;

    public Page<Dosage> search(String medication, String presentation, String dosage, Pageable pageable) {
        return repository.searchAssociated(
                medication == null ? null : Searchable.toLike(medication),
                presentation == null ? null : Searchable.toLike(presentation),
                dosage == null ? null : Searchable.toLike(dosage),
                dosage == null ? "" : Searchable.toSimilarity(dosage),
                pageable
        );
    }

    public Dosage findById(Long id) throws Exception {
        return repository.findById(id).orElseThrow(Exception::new);
    }

    public Dosage create(DosageCommand command) {
        Dosage entity = new Dosage();
        return update(entity, command);
    }

    public Dosage updateById(Long id, DosageCommand command) throws Exception {
        Dosage entity = findById(id);
        return update(entity, command);
    }

    public Dosage update(Dosage entity, DosageCommand command) {
        entity.updateWithCommand(command);
        return repository.saveAndFlush(entity);
    }

}
