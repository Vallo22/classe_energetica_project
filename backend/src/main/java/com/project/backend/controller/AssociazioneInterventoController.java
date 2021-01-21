package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.AssociazioneIntervento;
import com.project.backend.repository.AssociazioneInterventoRepository;


@RestController
@CrossOrigin
public class AssociazioneInterventoController {
	
	@Autowired
	private AssociazioneInterventoRepository assInterv;
	
	@GetMapping("/associazioneIntervento")
    public List<AssociazioneIntervento> getStruttura(){
        return (List<AssociazioneIntervento>) assInterv.findAll();
    }

    @GetMapping("/getInterventoSingolo")
    public List<AssociazioneIntervento> getInterventoSingolo(@RequestParam Long carattQualit, @RequestParam Long struttura, @RequestParam Long intervento){
        return assInterv.findByCaratteristicaAssociazioneInterventoIdAndStrutturaAssociazioneIdAndInterventoId(carattQualit, struttura, intervento);
    }

    @GetMapping("/getInterventoByCaratteristica")
    public List<AssociazioneIntervento> getInterventoByCaratteristica(@RequestParam Long carattQualit, @RequestParam Long struttura){
        return assInterv.findByCaratteristicaAssociazioneInterventoIdAndStrutturaAssociazioneId(carattQualit, struttura);
    }

    @GetMapping("/getInterventoByStruttura")
    public List<AssociazioneIntervento> getInterventoByStruttura(@RequestParam Long struttura){
        return assInterv.findByStrutturaAssociazioneId(struttura);
    }

}
