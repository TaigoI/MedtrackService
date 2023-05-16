package com.medtrack.backend.repositories.dataset;

import com.medtrack.backend.entities.dataset.MedicationPresentationDosage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;

public interface MedicationPresentationDosageRepository extends JpaRepository<MedicationPresentationDosage, Long> {

    @Query(value = "SELECT mpd.* " +
            "FROM medication_presentation_dosage mpd " +
            "WHERE (?1 IS NULL OR mpd.medicationid = ?1) " +
            "AND   (?2 IS NULL OR mpd.presentationid = ?2) " +
            "AND   (?3 IS NULL OR mpd.dosageid = ?3) "
            , nativeQuery = true)
    Optional<MedicationPresentationDosage> findByMedicationIdPresentationIdAndDosageId(Long medicationId, Long presentationId, Long dosageId);

}
