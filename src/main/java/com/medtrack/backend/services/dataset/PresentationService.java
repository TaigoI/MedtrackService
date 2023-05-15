package com.medtrack.backend.services.dataset;

import com.medtrack.backend.commands.dataset.Presentation.PresentationCommand;
import com.medtrack.backend.entities.dataset.Presentation;
import com.medtrack.backend.repositories.dataset.PresentationRepository;
import com.medtrack.backend.util.Searchable;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PresentationService {

    private final PresentationRepository repository;

    public Page<Presentation> search(String medication, String presentation, String dosage, Pageable pageable) {
        return repository.searchAssociated(
                medication == null ? null : Searchable.toLike(medication),
                presentation == null ? null : Searchable.toLike(presentation),
                dosage == null ? null : Searchable.toLike(dosage),
                dosage == null ? "" : Searchable.toSimilarity(dosage),
                pageable
        );
    }

    public Presentation findById(Long id) throws Exception {
        return repository.findById(id).orElseThrow(Exception::new);
    }

    public Presentation create(PresentationCommand command) {
        Presentation entity = new Presentation();
        return update(entity, command);
    }

    public Presentation updateById(Long id, PresentationCommand command) throws Exception {
        Presentation entity = findById(id);
        return update(entity, command);
    }

    public Presentation update(Presentation entity, PresentationCommand command) {
        entity.updateWithCommand(command);
        return repository.saveAndFlush(entity);
    }

}
