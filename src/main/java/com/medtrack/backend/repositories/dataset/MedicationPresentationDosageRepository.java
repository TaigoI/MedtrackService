package com.medtrack.backend.repositories.dataset;

import com.medtrack.backend.entities.dataset.MedicationPresentationDosage;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MedicationPresentationDosageRepository extends JpaRepository<MedicationPresentationDosage, Long> {

}
