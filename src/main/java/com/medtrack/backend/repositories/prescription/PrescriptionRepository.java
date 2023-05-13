package com.medtrack.backend.repositories.prescription;

import com.medtrack.backend.entities.prescription.Prescription;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface PrescriptionRepository extends JpaRepository<Prescription, Long> {

    @Query(value = "SELECT * " +
            "FROM prescription P " +
            "WHERE :value IS NULL OR (P.title ILIKE CONCAT('%',:value,'%'))"
            ,nativeQuery = true)
    Page<Prescription> searchByTitle(String value, Pageable pageable);

}
