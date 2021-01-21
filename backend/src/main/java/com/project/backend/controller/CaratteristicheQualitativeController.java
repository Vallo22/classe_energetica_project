package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.CaratteristicheQualitative;
import com.project.backend.repository.CaratteristicheQualitativeRepository;


@RestController
@CrossOrigin
public class CaratteristicheQualitativeController {
	
    @Autowired
    private CaratteristicheQualitativeRepository caratteristicheQualitativeRepository;

    @GetMapping("/caratteristicheQualitative")
    public List<CaratteristicheQualitative> getCaratteristiche(){
    	return (List<CaratteristicheQualitative>) caratteristicheQualitativeRepository.findAll();
    	
    }
    
    @PostMapping("/caratteristicheQualitative")
    void addUser(@RequestBody CaratteristicheQualitative caratteristiche) {
        caratteristicheQualitativeRepository.save(caratteristiche);
        
    }
}
