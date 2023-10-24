package com.project.buildingpages.repository;

import com.project.buildingpages.model.Management;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Set;

public interface ManagementRepository extends JpaRepository<Management,Long> {
//    Set<Management> findByManagement(Management management);
}
