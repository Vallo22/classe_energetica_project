package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.Indicatore;
import com.project.backend.repository.IndicatoreRepository;


@RestController
@CrossOrigin
public class IndicatoreController {
	
	@Autowired
	private IndicatoreRepository indicatore;
	
	@GetMapping("/indicatore")
    public List<Indicatore> getIndicatore() {
        return (List<Indicatore>) indicatore.findAll();
    }

}
