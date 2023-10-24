package com.project.buildingpages.service;

import com.project.buildingpages.model.Building;
import com.project.buildingpages.model.Management;
import com.project.buildingpages.repository.BuildingRepository;
import com.project.buildingpages.repository.ManagementRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@Service
public class BuildingService {
    @Autowired
    private BuildingRepository buildingRepository;

    @Autowired
    private ManagementRepository managementRepository;

    public Building addBuilding(Building newBldg, long id) {
        Management foundMnmt = managementRepository.findById(id).orElseThrow(
                () -> new ResponseStatusException(HttpStatus.NOT_FOUND,
                        "Property Manager not found with id " + id)
        );
        newBldg.setManagement(foundMnmt);
        return buildingRepository.save(newBldg);
    }

    public List<Building> findAllBuildings() {
        return buildingRepository.findAll();
    }

    public Building findBuildingById(Long id) {
        return buildingRepository.findById(id).orElseThrow(
                () -> new ResponseStatusException(HttpStatus.NOT_FOUND,
                        "Building not found with id " + id)
        );
    }
}
