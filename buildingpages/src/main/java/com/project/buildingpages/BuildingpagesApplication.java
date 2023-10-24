package com.project.buildingpages;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
//@ImportResource({"classpath*:application-context.xml"})
public class BuildingpagesApplication {

	public static void main(String[] args) {
		SpringApplication.run(BuildingpagesApplication.class, args);
	}

}
