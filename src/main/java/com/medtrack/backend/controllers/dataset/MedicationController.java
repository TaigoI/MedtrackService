package com.medtrack.backend.controllers.dataset;

import com.medtrack.backend.commands.dataset.Medication.MedicationCommand;
import com.medtrack.backend.services.dataset.MedicationService;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@SecurityRequirement(name = "bearerAuth")
@RequestMapping("/medication")
@RequiredArgsConstructor
public class MedicationController {

    private final MedicationService service;

    //TODO
    @GetMapping
    public ResponseEntity<?> search(@RequestParam(required = false) String value,
                                    @RequestParam(defaultValue = "0") Integer page,
                                    @RequestParam(defaultValue = "20") Integer size) {
        if (value == null) value = "";
        Pageable pageable = PageRequest.of(page, size);
        return ResponseEntity.ok(service.search(value, pageable));
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> findById(@PathVariable Long id) throws Exception {
        return ResponseEntity.ok(service.findById(id));
    }

    @PostMapping
    public ResponseEntity<?> create(@RequestBody MedicationCommand command) {
        return ResponseEntity.ok(service.create(command));
    }

    @PutMapping("/{id}")
    public ResponseEntity<?> updateById(@PathVariable Long id, @RequestBody MedicationCommand command) throws Exception {
        return ResponseEntity.ok(service.updateById(id, command));
    }

}
