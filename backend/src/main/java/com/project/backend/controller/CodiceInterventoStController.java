package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.CodiceInterventoSt;
import com.project.backend.repository.CodiceInterventoStRepository;

@RestController
@CrossOrigin
public class CodiceInterventoStController {
	
	@Autowired
	private CodiceInterventoStRepository codice;
	
	@GetMapping("/codiceInterventoSt")
    public List<CodiceInterventoSt> getCodice(){
        return (List<CodiceInterventoSt>) codice.findAll();
    }

}
