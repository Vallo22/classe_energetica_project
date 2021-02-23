package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.TypeStrutturaSt;
import com.project.backend.repository.TypeStrutturaStRepository;

@RestController
@CrossOrigin
public class TypeStrutturaStController {
	
	@Autowired
	private TypeStrutturaStRepository type;
	
	@GetMapping("/typeStrutturaSt")
    public List<TypeStrutturaSt> getCaratteristiche() {
        return (List<TypeStrutturaSt>) type.findAll();
    }

}
