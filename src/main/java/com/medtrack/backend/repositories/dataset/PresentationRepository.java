package com.medtrack.backend.repositories.dataset;

import com.medtrack.backend.entities.dataset.Company;
import com.medtrack.backend.entities.dataset.Presentation;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PresentationRepository extends JpaRepository<Presentation, Long> {

    Page<Company> findBySearchableLike(String value, Pageable pageable);

}
