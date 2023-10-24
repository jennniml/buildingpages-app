package com.project.buildingpages.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;

import java.util.Set;

@Entity
@Table(name = "buildings")
public class Building {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String address;

    @Column(nullable = false)
    private String neighborhood;

    private String description;

    private String image;

    @OneToMany(mappedBy="building", orphanRemoval = true)
//    @JoinColumn(referencedColumnName = "id")
//    @JsonIgnore
    private Set<Apartment> apartments;

    @ManyToOne()
//    @ManyToOne(optional = false, fetch = FetchType.LAZY)
//    @JoinColumn(nullable=false)
    @JsonIgnore
    private Management management;

    public Long getId() {
        return id;
    }

    public void setId(Long bldgId) {
        this.id = bldgId;
    }

    public String getName() {
        return name;
    }

    public void setName(String bldgName) {
        this.name = bldgName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String bldgAddr) {
        this.address = bldgAddr;
    }

    public String getNeighborhood() {
        return neighborhood;
    }

    public void setNeighborhood(String neighborhood) {
        this.neighborhood = neighborhood;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Set<Apartment> getApartments() {
        return apartments;
    }

    public void setApartments(Set<Apartment> apartments) {
        this.apartments = apartments;
    }

    public Management getManagement() {
        return management;
    }

    public void setManagement(Management management) {
        this.management = management;
    }
}
