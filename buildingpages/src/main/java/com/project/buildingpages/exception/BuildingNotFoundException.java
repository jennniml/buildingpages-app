package com.project.buildingpages.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class BuildingNotFoundException extends RuntimeException {
    public BuildingNotFoundException(long id) {
        super("Could not found the building with id "+ id);
    }
}
