package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.Struttura;
import com.project.backend.repository.StrutturaRepository;

@RestController
@CrossOrigin
public class StrutturaController {
	
	@Autowired
    private StrutturaRepository struttura;


    @GetMapping("/struttura")
    public List<Struttura> getStruttura(){
        return (List<Struttura>) struttura.findAll();
        
    }
    
}