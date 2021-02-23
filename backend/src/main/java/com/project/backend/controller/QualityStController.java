package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.QualitySt;
import com.project.backend.repository.QualityStRepository;


@RestController
@CrossOrigin
public class QualityStController {
	
	@Autowired
	private QualityStRepository quality;
	
	@GetMapping("/qualitySt")
    public List<QualitySt> getCaratteristiche() {
        return (List<QualitySt>) quality.findAll();
    }

}
