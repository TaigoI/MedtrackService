package com.medtrack.backend.exception;

import lombok.Getter;

import java.util.Map;

@Getter
public class ResourceNotFoundException extends RuntimeException {

    private final Map<String, String> parameters;

    public ResourceNotFoundException(String message, Map<String, String> parameters) {
        super(message);
        this.parameters = parameters;
    }
}
