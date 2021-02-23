package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.StrutturaSt;
import com.project.backend.repository.StrutturaStRepository;

@RestController
@CrossOrigin
public class StrutturaStController {
	
	@Autowired
	private StrutturaStRepository strutturast;
	
	@GetMapping("/getStrutturaCaratteristicaSt")
    public List<StrutturaSt> getStruttureForCaratteristica(@RequestParam Long carQual){
        return strutturast.findByCaratteristicaQualitativa(carQual);
    }

    @GetMapping("/strutturaSt")
    public List<StrutturaSt> getCaratteristiche() {
        return (List<StrutturaSt>) strutturast.findAll();
    }

}
