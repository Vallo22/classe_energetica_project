package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.AssociazioneInterventoSt;
import com.project.backend.repository.AssociazioneInterventoStRepository;

@RestController
@CrossOrigin
public class AssociazioneInterventoStController {
	
	@Autowired
	private AssociazioneInterventoStRepository associazione;
	
	@GetMapping("/associazioneInterventoSt")
    public List<AssociazioneInterventoSt> getStruttura(){
        return (List<AssociazioneInterventoSt>) associazione.findAll();
    }

    @GetMapping("/getInterventoSingoloSt")
    public List<AssociazioneInterventoSt> getInterventoSingolo(@RequestParam Long carQual, @RequestParam Long struttura, @RequestParam Long intervento){
        return associazione.findByCaratteristicaAssociazioneInterventoIdAndStrutturaAssociazioneIdAndInterventoId(carQual, struttura, intervento);
    }

    @GetMapping("/getInterventoByCaratteristicaSt")
    public List<AssociazioneInterventoSt> getInterventoByCaratteristica(@RequestParam Long carQual, @RequestParam Long struttura){
        return associazione.findByCaratteristicaAssociazioneInterventoIdAndStrutturaAssociazioneId(carQual, struttura);
    }

    @GetMapping("/getInterventoByStrutturaSt")
    public List<AssociazioneInterventoSt> getInterventoByStruttura(@RequestParam Long struttura){
        return associazione.findByStrutturaAssociazioneId(struttura);
    }

}
