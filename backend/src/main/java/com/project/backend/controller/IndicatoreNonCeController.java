package com.project.backend.controller;

import java.util.List;

import com.project.backend.entità.IndicatoreNonCe;
import com.project.backend.repository.IndicatoreNonCeRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class IndicatoreNonCeController {

    @Autowired
	private IndicatoreNonCeRepository indicatore;
	
	@GetMapping("/indicatoreNonCe")
    public List<IndicatoreNonCe> getIndicatore() {
        return (List<IndicatoreNonCe>) indicatore.findAll();
    }
    
}
