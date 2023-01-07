package rsoi.lab2.gateway.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

public class ErrorController {
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    @ExceptionHandler(org.springframework.security.access.AccessDeniedException.class)
    public String entityNotFound(org.springframework.security.access.AccessDeniedException exception) {

        return null;

    }
}
