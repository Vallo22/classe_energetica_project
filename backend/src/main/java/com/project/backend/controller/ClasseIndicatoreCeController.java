package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.ClasseIndicatoreCe;
import com.project.backend.repository.ClasseIndicatoreCeRepository;


@RestController
@CrossOrigin
public class ClasseIndicatoreCeController {
	
	@Autowired
    private ClasseIndicatoreCeRepository classeIndicatore;
	
	@GetMapping("/classeIndicatoreCe")
    public List<ClasseIndicatoreCe> getClasseIndicatore() {
		return(List<ClasseIndicatoreCe>) classeIndicatore.findAll();
	}
	
	

}
