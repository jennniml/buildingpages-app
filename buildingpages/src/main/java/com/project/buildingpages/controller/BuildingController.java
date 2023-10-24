package com.project.buildingpages.controller;

import com.project.buildingpages.model.Apartment;
import com.project.buildingpages.model.Building;
import com.project.buildingpages.repository.BuildingRepository;
import com.project.buildingpages.service.BuildingService;
import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@RestController
@RequestMapping("/buildings")
@CrossOrigin("http://localhost:3000")
public class BuildingController {

    @Autowired
    private BuildingService buildingService;

    @PostMapping("/{id}")
    public ResponseEntity<?> createBuildingForManagement(@RequestBody Building newBldg, @PathVariable("id") long id) {
        Building newBuilding = buildingService.addBuilding(newBldg, id);
        return ResponseEntity.ok(newBuilding);
    }

    @GetMapping
    public ResponseEntity<?> getAllBuildings() {
        List<Building> buildingList = buildingService.findAllBuildings();
        return ResponseEntity.ok(buildingList);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Building> getBuildingById(@PathVariable("id") long id) {
        Building building = buildingService.findBuildingById(id);
        return new ResponseEntity<>(building, HttpStatus.OK);
    }

    @GetMapping("/image/{filename}")
    public ResponseEntity<byte[]> getImage(@PathVariable("filename") String filename) throws IOException {
        String FILE_PATH_ROOT = "src/main/images/buildings/";
        byte[] image = Files.readAllBytes(new File(FILE_PATH_ROOT +filename).toPath());

        return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(image);
    }
}
