package com.medtrack.backend.repositories.prescription;

import com.medtrack.backend.entities.prescription.PrescriptionItem;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PrescriptionItemRepository extends JpaRepository<PrescriptionItem, Long> {
}
