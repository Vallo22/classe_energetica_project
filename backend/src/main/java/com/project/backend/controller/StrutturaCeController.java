package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.StrutturaCe;
import com.project.backend.repository.StrutturaCeRepository;

@RestController
@CrossOrigin
public class StrutturaCeController {
	
	@Autowired
    private StrutturaCeRepository struttura;


    @GetMapping("/strutturaCe")
    public List<StrutturaCe> getStruttura(){
        return (List<StrutturaCe>) struttura.findAll();
        
    }
    
}