package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.IndicatoreCe;
import com.project.backend.repository.IndicatoreCeRepository;


@RestController
@CrossOrigin
public class IndicatoreCeController {
	
	@Autowired
	private IndicatoreCeRepository indicatore;
	
	@GetMapping("/indicatoreCe")
    public List<IndicatoreCe> getIndicatore() {
        return (List<IndicatoreCe>) indicatore.findAll();
    }

}
