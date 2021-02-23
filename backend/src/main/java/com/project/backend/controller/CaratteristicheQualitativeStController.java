package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.CaratteristicheQualitativeSt;
import com.project.backend.repository.CaratteristicheQualitativeStRepository;


@RestController
@CrossOrigin
public class CaratteristicheQualitativeStController {
	
	@Autowired
    private CaratteristicheQualitativeStRepository caratteristicheQ;
	
	@GetMapping("/caratteristicheQualitativeSt")
    public List<CaratteristicheQualitativeSt> getCaratteristiche(){
    return (List<CaratteristicheQualitativeSt>) caratteristicheQ.findAll();
    }

    @PostMapping("/caratteristicheQualitativeSt")
    void addUser(@RequestBody CaratteristicheQualitativeSt caratteristiche) {
        caratteristicheQ.save(caratteristiche);
    }

}
