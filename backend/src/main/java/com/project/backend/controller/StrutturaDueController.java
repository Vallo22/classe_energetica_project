package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.StrutturaDue;
import com.project.backend.repository.StrutturaDueRepository;

@RestController
@CrossOrigin
public class StrutturaDueController {
    
	@Autowired
    private StrutturaDueRepository strutturaDue;


    @GetMapping("/strutturaDue")
    public List<StrutturaDue> getStrutturaDue(){
        return (List<StrutturaDue>) strutturaDue.findAll();
        
    }
}
