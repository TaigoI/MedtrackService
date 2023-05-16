package com.medtrack.backend.repositories.prescription;

import com.medtrack.backend.entities.prescription.Prescription;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface PrescriptionRepository extends JpaRepository<Prescription, Long> {

    @Query(value = "SELECT * " +
            "FROM prescription P " +
            "WHERE P.userid = :userId " +
            "AND (:templatesOnly IS FALSE OR (P.template IS TRUE)) " +
            "AND (:value IS NULL OR (P.title ILIKE CONCAT('%',:value,'%'))) "
            , nativeQuery = true)
    Page<Prescription> searchByTitle(Long userId, String value, Boolean templatesOnly, Pageable pageable);

}
