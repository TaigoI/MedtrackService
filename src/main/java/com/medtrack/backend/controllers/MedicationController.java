package com.medtrack.backend.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/medication")
@RequiredArgsConstructor
public class MedicationController {

    //TODO
    @GetMapping
    public ResponseEntity<?> search(@RequestParam(required = false) String value,
                                    @RequestParam(defaultValue = "1") Integer page,
                                    @RequestParam(defaultValue = "20") Integer size) {
        return ResponseEntity.ok().build();
    }

}
