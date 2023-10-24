package com.project.buildingpages.service;

import com.project.buildingpages.model.Apartment;
import com.project.buildingpages.model.Building;
import com.project.buildingpages.repository.ApartmentRepository;
import com.project.buildingpages.repository.BuildingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Set;
@Service
public class ApartmentService {

    @Autowired
    private ApartmentRepository apartmentRepository;

    @Autowired
    private BuildingRepository buildingRepository;

    public Apartment addApartment(Apartment newApt, long id) {
        Building foundBldg = buildingRepository.findById(id).orElseThrow(
                () -> new ResponseStatusException(HttpStatus.NOT_FOUND,
                        "Building not found with id " + id)
        );

        newApt.setBuilding(foundBldg);
        return apartmentRepository.save(newApt);
    }

    public List<Apartment> findAllApartments() {
        return apartmentRepository.findAll();
    }

    public Set<Apartment> findAptByBldgId(Long bldgId) {
        Building building = new Building();
        building.setId(bldgId);
        return apartmentRepository.findByBuilding(building);
    }

}
