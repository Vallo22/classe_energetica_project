package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.TipologiaStrutturaSt;
import com.project.backend.repository.TipologiaStrutturaStRepository;

@RestController
@CrossOrigin
public class TipologiaStrutturaStController {
	
	@Autowired
	private TipologiaStrutturaStRepository tipologia;
	
	@GetMapping("/tipologiaStrutturaSt")
    public List<TipologiaStrutturaSt> getStruttura(){
        return (List<TipologiaStrutturaSt>) tipologia.findAll();
    }

}
