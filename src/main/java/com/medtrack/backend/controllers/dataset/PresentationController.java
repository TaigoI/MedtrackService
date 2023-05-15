package com.medtrack.backend.controllers.dataset;

import com.medtrack.backend.commands.dataset.Presentation.PresentationCommand;
import com.medtrack.backend.services.dataset.PresentationService;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@SecurityRequirement(name = "bearerAuth")
@RequestMapping("/presentation")
@RequiredArgsConstructor
public class PresentationController {

    private final PresentationService service;

    //TODO
    @GetMapping
    public ResponseEntity<?> search(@RequestParam(required = false) String medication,
                                    @RequestParam(required = false) String presentation,
                                    @RequestParam(required = false) String dosage,
                                    @RequestParam(defaultValue = "0") Integer page,
                                    @RequestParam(defaultValue = "20") Integer size) {
        Pageable pageable = PageRequest.of(page, size);
        return ResponseEntity.ok(service.search(medication, presentation, dosage, pageable));
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> findById(@PathVariable Long id) throws Exception {
        return ResponseEntity.ok(service.findById(id));
    }

    @PostMapping
    public ResponseEntity<?> create(@RequestBody PresentationCommand command) {
        return ResponseEntity.ok(service.create(command));
    }

    @PutMapping("/{id}")
    public ResponseEntity<?> updateById(@PathVariable Long id, @RequestBody PresentationCommand command) throws Exception {
        return ResponseEntity.ok(service.updateById(id, command));
    }

}
