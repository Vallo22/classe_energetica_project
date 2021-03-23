package com.project.backend.controller;

import java.util.List;

import com.project.backend.entità.ClasseIndicatoreNonCe;
import com.project.backend.repository.ClasseIndicatoreNonCeRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class ClasseIndicatoreNonController {

    @Autowired
    private ClasseIndicatoreNonCeRepository classeIndicatore;
	
	@GetMapping("/classeIndicatoreNonCe")
    public List<ClasseIndicatoreNonCe> getClasseIndicatore() {
		return(List<ClasseIndicatoreNonCe>) classeIndicatore.findAll();
	}
    
}
