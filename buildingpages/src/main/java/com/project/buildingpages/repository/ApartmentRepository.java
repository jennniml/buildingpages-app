package com.project.buildingpages.repository;

import com.project.buildingpages.model.Apartment;
import com.project.buildingpages.model.Building;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Set;

public interface ApartmentRepository extends JpaRepository<Apartment,Long> {
    Set<Apartment> findByBuilding(Building building);
}
