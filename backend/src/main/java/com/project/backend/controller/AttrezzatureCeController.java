package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.AttrezzatureCe;
import com.project.backend.repository.AttrezzatureCeRepository;

@RestController
@CrossOrigin
public class AttrezzatureCeController {
	
	@Autowired
	private AttrezzatureCeRepository attrezzature;
	
	@GetMapping("/attrezzatureCe")
	public List<AttrezzatureCe> getAttrezzature() {
		return(List<AttrezzatureCe>) attrezzature.findAll();
	}

}
