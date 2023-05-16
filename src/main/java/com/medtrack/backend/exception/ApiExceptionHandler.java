package com.medtrack.backend.exception;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang3.exception.ExceptionUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
public class ApiExceptionHandler extends ResponseEntityExceptionHandler {

    @ExceptionHandler(UserNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ResponseEntity<Object> handleUserNotFoundException(UserNotFoundException ex, WebRequest request) {
        Error err = new Error(ex.getMessage(), ExceptionUtils.getRootCauseMessage(ex), ex.getParameters());
        return handleExceptionInternal(ex, err, new HttpHeaders(), HttpStatus.NOT_FOUND, request);
    }

    @ExceptionHandler(UserAlreadyExistsException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ResponseEntity<Object> handleUserNotFoundException(UserAlreadyExistsException ex, WebRequest request) {
        Error err = new Error(ex.getMessage(), ExceptionUtils.getRootCauseMessage(ex), ex.getParameters());
        return handleExceptionInternal(ex, err, new HttpHeaders(), HttpStatus.NOT_FOUND, request);
    }

    @ExceptionHandler({ResourceNotFoundException.class})
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ResponseEntity<Object> handleResourceNotFoundException(ResourceNotFoundException ex, WebRequest request) {
        Error err = new Error(ex.getMessage(), ExceptionUtils.getRootCauseMessage(ex), ex.getParameters());
        return handleExceptionInternal(ex, err, new HttpHeaders(), HttpStatus.NOT_FOUND, request);
    }

    @ExceptionHandler({Exception.class})
    public ResponseEntity<Object> handleExceptions(Exception ex, WebRequest request) {
        Error err = new Error(ex.getMessage(), ExceptionUtils.getRootCauseMessage(ex), new HashMap<>());
        return handleExceptionInternal(ex, err, new HttpHeaders(), HttpStatus.BAD_REQUEST, request);
    }

    @Getter
    @Setter
    @AllArgsConstructor
    public static class Error {
        private String message;
        private String rootCauseMessage;
        private Map<String, String> parameters;
    }

}
