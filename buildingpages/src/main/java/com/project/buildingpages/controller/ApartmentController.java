package com.project.buildingpages.controller;

import com.project.buildingpages.model.Apartment;
import com.project.buildingpages.service.ApartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("/apartments")
@CrossOrigin("http://localhost:3000")
public class ApartmentController {

    @Autowired
    private ApartmentService apartmentService;

    @PostMapping("/{id}")
    public ResponseEntity<?> createApartmentForBuilding(@RequestBody Apartment newApt, @PathVariable("id") long id) {
        Apartment newApartment = apartmentService.addApartment(newApt, id);
        return ResponseEntity.ok(newApartment);
    }

    @GetMapping
    public ResponseEntity<?> getAllApartments() {
       List<Apartment> apartmentList = apartmentService.findAllApartments();
       return ResponseEntity.ok(apartmentList);
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> getAptsByBldgId(@PathVariable("id") Long bldgId) {
        Set<Apartment> aptsByBldg = apartmentService.findAptByBldgId(bldgId);
        return ResponseEntity.ok(aptsByBldg);
    }

    @GetMapping("/image/{filename}")
    public ResponseEntity<byte[]> getImage(@PathVariable("filename") String filename) throws IOException {
        String FILE_PATH_ROOT = "src/main/images/apartments/";
        byte[] image = Files.readAllBytes(new File(FILE_PATH_ROOT +filename).toPath());

        return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(image);
    }
}
