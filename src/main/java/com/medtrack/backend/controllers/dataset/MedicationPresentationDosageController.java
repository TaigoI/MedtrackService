package com.medtrack.backend.controllers.dataset;

import com.medtrack.backend.services.dataset.MedicationPresentationDosageService;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SecurityRequirement(name = "bearerAuth")
@RequestMapping("/mpd")
@RequiredArgsConstructor
public class MedicationPresentationDosageController {

    private final MedicationPresentationDosageService service;

    @GetMapping("/{id}")
    public ResponseEntity<?> findById(@PathVariable Long id) throws Exception {
        return ResponseEntity.ok(service.getById(id));
    }

    @GetMapping("/medication/{medicationId}/presentation/{presentationId}/dosage/{dosageId}")
    public ResponseEntity<?> findByRelationshipIds(@PathVariable Long medicationId,
                                                   @PathVariable Long presentationId,
                                                   @PathVariable Long dosageId) throws Exception {
        return ResponseEntity.ok(service.getByRelationshipIds(medicationId, presentationId, dosageId));
    }

}
