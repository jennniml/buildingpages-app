package com.project.buildingpages.service;

import com.project.buildingpages.model.Management;
import com.project.buildingpages.repository.ManagementRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@Service
public class ManagementService {
    @Autowired
    private ManagementRepository managementRepository;

    public Management addManagement(Management newMnmt) {
        return managementRepository.save(newMnmt);
    }

    public List<Management> findAllManagement() {
        return managementRepository.findAll();
    }

    public Management findManagementById(Long id) {
        return managementRepository.findById(id).orElseThrow(
                () -> new ResponseStatusException(HttpStatus.NOT_FOUND,
                        "Property Manager not found with id " + id)
        );
    }
}
