package com.medtrack.backend.repositories;

import com.medtrack.backend.entities.domain.Company;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompanyRepository extends JpaRepository<Company, Long> {

    Page<Company> findBySearchable(String value, Pageable pageable);

}
