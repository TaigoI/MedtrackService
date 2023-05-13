package com.medtrack.backend.repositories.dataset;

import com.medtrack.backend.entities.dataset.Company;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyRepository extends JpaRepository<Company, Long> {

    Page<Company> findBySearchable(String value, Pageable pageable);

}
