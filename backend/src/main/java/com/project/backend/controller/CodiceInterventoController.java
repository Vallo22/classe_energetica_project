package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.CodiceIntervento;
import com.project.backend.repository.CodiceInterventoRepository;

@RestController
@CrossOrigin
public class CodiceInterventoController {
	
	@Autowired
	private CodiceInterventoRepository codIntervento;
	
	@GetMapping("/codiceIntervento")
    public List<CodiceIntervento> getCodice(){
        return (List<CodiceIntervento>) codIntervento.findAll();
    }

}
