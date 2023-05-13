package com.medtrack.backend.repositories.dataset;

import com.medtrack.backend.entities.dataset.Medication;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MedicationRepository extends JpaRepository<Medication, Long> {

    @Query("SELECT m FROM Medication m WHERE m.searchable LIKE :like ORDER BY similarity(:similarity, m.searchable) DESC")
    Page<Medication> findBySearchableContaining(String like, String similarity, Pageable pageable);

}
