package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.EdificioSt;
import com.project.backend.repository.EdificioStRepository;

@RestController
@CrossOrigin
public class EdificioStController {
	
	@Autowired
	private EdificioStRepository edificio;
	
	@GetMapping("/edificioSt")
    public List<EdificioSt> getCaratteristiche() {
        List<EdificioSt> lE = edificio.findAll();
        System.out.println(lE);
        return lE;
    }

}
