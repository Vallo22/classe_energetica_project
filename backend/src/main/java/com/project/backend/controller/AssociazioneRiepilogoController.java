package com.project.backend.controller;

import java.util.List;

import com.project.backend.entità.AssociazioneRiepilogo;
import com.project.backend.repository.AssociazioneRiepilogoRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class AssociazioneRiepilogoController {
    
    @Autowired
	private AssociazioneRiepilogoRepository assRiepilogo;

    @GetMapping("/associazioneRiepilogo")
    public List<AssociazioneRiepilogo> getAssociazioneRiepilogo() {
        return(List<AssociazioneRiepilogo>) assRiepilogo.findAll();
    }

}
