package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.MeccanismiSt;
import com.project.backend.repository.MeccanismiStRepository;

@RestController
@CrossOrigin
public class MeccanismiStController {
	
	@Autowired
	private MeccanismiStRepository meccanismi;
	
	@GetMapping("/meccanismiSt")
    public List<MeccanismiSt> getMeccanismi(){
        return (List<MeccanismiSt>) meccanismi.findAll();
    }

}
