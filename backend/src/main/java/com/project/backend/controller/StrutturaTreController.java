package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.StrutturaTre;
import com.project.backend.repository.StrutturaTreRepository;

@RestController
@CrossOrigin
public class StrutturaTreController {
	
	@Autowired
	private StrutturaTreRepository strutturaTre;
	
	@GetMapping("/strutturaTre")
	public List<StrutturaTre> getStrutturaTre(){
		return (List<StrutturaTre>) strutturaTre.findAll();
		
	}
	
	

}
