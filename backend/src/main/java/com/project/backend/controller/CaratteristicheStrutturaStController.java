package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.CaratteristicheStrutturaSt;
import com.project.backend.repository.CaratteristicheStrutturaStRepository;

@RestController
@CrossOrigin
public class CaratteristicheStrutturaStController {
	
	@Autowired
	private CaratteristicheStrutturaStRepository caratteristiche;
	
	@GetMapping("/caratteristicheStrutturaSt")
    public List<CaratteristicheStrutturaSt> getCaratteristicheStruttura(){
        return (List<CaratteristicheStrutturaSt>) caratteristiche.findAll();
    }

}
