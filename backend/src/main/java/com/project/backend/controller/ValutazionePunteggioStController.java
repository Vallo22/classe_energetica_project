package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.ValutazionePunteggioSt;
import com.project.backend.repository.ValutazionePunteggioStRepository;
@RestController
@CrossOrigin
public class ValutazionePunteggioStController {
	
	@Autowired
	private ValutazionePunteggioStRepository valutazione;
	
	@GetMapping("/valutazionePunteggioSt")
    public List<ValutazionePunteggioSt> getPunteggioValutazione(){
        return (List<ValutazionePunteggioSt>) valutazione.findAll();
    }

}
