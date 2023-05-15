package com.medtrack.backend.controllers;

import com.medtrack.backend.auth.MedtrackUserDetails;
import com.medtrack.backend.services.PrescriptionService;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.web.bind.annotation.*;

@RestController
@SecurityRequirement(name = "bearerAuth")
@RequestMapping("/prescription")
@RequiredArgsConstructor
public class PrescriptionController {

    private final PrescriptionService service;

    @GetMapping
    public ResponseEntity<?> search(@RequestParam(defaultValue = "") String value,
                                    @RequestParam(defaultValue = "false") Boolean templatesOnly,
                                    @RequestParam(defaultValue = "0") Integer page,
                                    @RequestParam(defaultValue = "20") Integer size,
                                    UsernamePasswordAuthenticationToken token) {
        MedtrackUserDetails userDetails = (MedtrackUserDetails) token.getPrincipal();
        PageRequest pageRequest = PageRequest.of(page, size);
        return ResponseEntity.ok(service.search(userDetails.getId(), value, templatesOnly, pageRequest));
    }

    @GetMapping("/{prescriptionId}")
    public ResponseEntity<?> findById(@PathVariable Long prescriptionId) throws Exception {
        return ResponseEntity.ok(service.findById(prescriptionId));
    }

    @PostMapping
    public ResponseEntity<?> create(@RequestBody com.medtrack.backend.commands.prescription.Prescription.PrescriptionCommand command,
                                    UsernamePasswordAuthenticationToken token) {
        MedtrackUserDetails userDetails = (MedtrackUserDetails) token.getPrincipal();
        return ResponseEntity.ok(service.create(command, userDetails.getId()));
    }

}
