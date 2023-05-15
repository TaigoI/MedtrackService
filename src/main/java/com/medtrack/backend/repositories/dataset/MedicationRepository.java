package com.medtrack.backend.repositories.dataset;

import com.medtrack.backend.entities.dataset.Medication;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface MedicationRepository extends JpaRepository<Medication, Long> {

    @Query(value = "SELECT m.* " +
            "FROM medication_presentation_dosage mpd " +
            "JOIN medication m on (mpd.medicationid = m.id) " +
            "JOIN presentation p on (mpd.presentationid = p.id) " +
            "JOIN dosage d on (mpd.dosageid = d.id) " +
            "WHERE (?1 IS NULL OR m.searchable LIKE ?1) " +
            "AND   (?2 IS NULL OR p.searchable LIKE ?2) " +
            "AND   (?3 IS NULL OR d.searchable LIKE ?3) " +
            "GROUP BY m.id, m.searchable " +
            "ORDER BY similarity(m.searchable, ?4) DESC",
            nativeQuery = true
    )
    Page<Medication> searchAssociated(String medicationLike, String presentationLike, String dosageLike, String similarity, Pageable pageable);


}
