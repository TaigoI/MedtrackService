package com.medtrack.backend.exception;

import lombok.Getter;

import java.util.Map;

@Getter
public class UserAlreadyExistsException extends RuntimeException {

    private final Map<String, String> parameters;

    public UserAlreadyExistsException(String message, Map<String, String> parameters) {
        super(message);
        this.parameters = parameters;
    }

}
