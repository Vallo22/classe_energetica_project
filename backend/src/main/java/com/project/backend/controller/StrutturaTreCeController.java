package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.StrutturaTreCe;
import com.project.backend.repository.StrutturaTreCeRepository;

@RestController
@CrossOrigin
public class StrutturaTreCeController {
	
	@Autowired
	private StrutturaTreCeRepository strutturaTre;
	
	@GetMapping("/strutturaTreCe")
	public List<StrutturaTreCe> getStrutturaTre(){
		return (List<StrutturaTreCe>) strutturaTre.findAll();
		
	}
	
	@GetMapping("/getStrutturaCaratteristicaCe")
	public List<StrutturaTreCe> getStruttureForCaratteristica(@RequestParam Long carattQualit) {
		return strutturaTre.findByCaratteristicaQualitativa(carattQualit);
	}
	
	

}
