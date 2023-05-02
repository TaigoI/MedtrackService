package com.medtrack.backend.controllers;

import com.medtrack.backend.commands.Prescription.inputs.PrescriptionCommand;
import com.medtrack.backend.services.PrescriptionService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/prescription")
@RequiredArgsConstructor
public class PrescriptionController {

    private final PrescriptionService service;

    @GetMapping
    public ResponseEntity<?> search(@RequestParam(required = false) String value,
                                    @RequestParam(defaultValue = "0") Integer page,
                                    @RequestParam(defaultValue = "20") Integer size) {
        if (value == null) value = "";
        return ResponseEntity.ok(service.search(value, PageRequest.of(page, size)));
    }

    @GetMapping("/{prescriptionId}")
    public ResponseEntity<?> findById(@PathVariable Long prescriptionId) throws Exception {
        return ResponseEntity.ok(service.findById(prescriptionId));
    }

    @PostMapping
    public ResponseEntity<?> create(@RequestBody PrescriptionCommand command){
        return ResponseEntity.ok(service.create(command));
    }

    @PutMapping("/{prescriptionId}")
    public ResponseEntity<?> updateById(@PathVariable Long prescriptionId, @RequestBody PrescriptionCommand command){
        return ResponseEntity.ok(service.update(prescriptionId, command));
    }

}
