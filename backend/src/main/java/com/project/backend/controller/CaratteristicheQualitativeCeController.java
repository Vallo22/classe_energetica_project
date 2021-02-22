package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.CaratteristicheQualitativeCe;
import com.project.backend.repository.CaratteristicheQualitativeCeRepository;


@RestController
@CrossOrigin
public class CaratteristicheQualitativeCeController {
	
    @Autowired
    private CaratteristicheQualitativeCeRepository caratteristicheQualitativeRepository;

    @GetMapping("/caratteristicheQualitativeCe")
    public List<CaratteristicheQualitativeCe> getCaratteristiche(){
    	return (List<CaratteristicheQualitativeCe>) caratteristicheQualitativeRepository.findAll();
    	
    }
    
    @PostMapping("/caratteristicheQualitativeCe")
    void addUser(@RequestBody CaratteristicheQualitativeCe caratteristiche) {
        caratteristicheQualitativeRepository.save(caratteristiche);
        
    }
}
