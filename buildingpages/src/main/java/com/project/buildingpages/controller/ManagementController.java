package com.project.buildingpages.controller;

import com.project.buildingpages.model.Management;
import com.project.buildingpages.service.ManagementService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/management")
@CrossOrigin("http://localhost:3000")
public class ManagementController {

    @Autowired
    private ManagementService managementService;

    @PostMapping("/add")
    public ResponseEntity<?> createManagement(@RequestBody Management newMnmt) {
        Management newManagement = managementService.addManagement(newMnmt);
        return ResponseEntity.ok(newManagement);
    }

    @GetMapping
    public ResponseEntity<?> getAllManagement() {
        List<Management> managementList = managementService.findAllManagement();
        return ResponseEntity.ok(managementList);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Management> getManagementById(@PathVariable("id") long id) {
        Management management = managementService.findManagementById(id);
        return new ResponseEntity<>(management, HttpStatus.OK);
    }

}
