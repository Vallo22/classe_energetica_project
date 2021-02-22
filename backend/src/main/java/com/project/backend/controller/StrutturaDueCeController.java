package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.StrutturaDueCe;
import com.project.backend.repository.StrutturaDueCeRepository;

@RestController
@CrossOrigin
public class StrutturaDueCeController {
    
	@Autowired
    private StrutturaDueCeRepository strutturaDue;

    @GetMapping("/strutturaDueCe")
    public List<StrutturaDueCe> getStrutturaDue(){
        return (List<StrutturaDueCe>) strutturaDue.findAll();
        
    }
}
