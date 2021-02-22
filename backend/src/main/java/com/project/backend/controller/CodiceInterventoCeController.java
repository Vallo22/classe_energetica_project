package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.CodiceInterventoCe;
import com.project.backend.repository.CodiceInterventoCeRepository;

@RestController
@CrossOrigin
public class CodiceInterventoCeController {
	
	@Autowired
	private CodiceInterventoCeRepository codIntervento;
	
	@GetMapping("/codiceInterventoCe")
    public List<CodiceInterventoCe> getCodice(){
        return (List<CodiceInterventoCe>) codIntervento.findAll();
    }

}
