package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.ClasseIndicatore;
import com.project.backend.repository.ClasseIndicatoreRepository;


@RestController
@CrossOrigin
public class ClasseIndicatoreController {
	
	@Autowired
    private ClasseIndicatoreRepository classeIndicatore;
	
	@GetMapping("/classeIndicatore")
    public List<ClasseIndicatore> getClasseIndicatore() {
		return(List<ClasseIndicatore>) classeIndicatore.findAll();
	}
	
	

}
