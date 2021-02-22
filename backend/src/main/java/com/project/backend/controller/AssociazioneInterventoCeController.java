package com.project.backend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.backend.entità.AssociazioneInterventoCe;
import com.project.backend.repository.AssociazioneInterventoCeRepository;


@RestController
@CrossOrigin
public class AssociazioneInterventoCeController {
	
	@Autowired
	private AssociazioneInterventoCeRepository assInterv;
	
	@GetMapping("/associazioneInterventoCe")
    public List<AssociazioneInterventoCe> getStruttura(){
        return (List<AssociazioneInterventoCe>) assInterv.findAll();
    }

    @GetMapping("/getInterventoSingoloCe")
    public List<AssociazioneInterventoCe> getInterventoSingolo(@RequestParam Long carattQualit, @RequestParam Long struttura, @RequestParam Long intervento){
        return assInterv.findByCaratteristicaAssociazioneInterventoIdAndStrutturaAssociazioneIdAndInterventoId(carattQualit, struttura, intervento);
    }

    @GetMapping("/getInterventoByCaratteristicaCe")
    public List<AssociazioneInterventoCe> getInterventoByCaratteristica(@RequestParam Long carattQualit, @RequestParam Long struttura){
        return assInterv.findByCaratteristicaAssociazioneInterventoIdAndStrutturaAssociazioneId(carattQualit, struttura);
    }

    @GetMapping("/getInterventoByStrutturaCe")
    public List<AssociazioneInterventoCe> getInterventoByStruttura(@RequestParam Long struttura){
        return assInterv.findByStrutturaAssociazioneId(struttura);
    }

}
