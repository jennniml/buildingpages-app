package com.project.buildingpages.repository;

import com.project.buildingpages.model.Building;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BuildingRepository extends JpaRepository<Building, Long> {
}
