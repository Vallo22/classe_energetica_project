package com.project.backend.repository;

import java.util.List;

import com.project.backend.entità.AssociazioneRiepilogo;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AssociazioneRiepilogoRepository extends JpaRepository<AssociazioneRiepilogo, Long> {

    List<AssociazioneRiepilogo> findByAssociazioneInterventoStrutturaleId(Long associazioneInterventoStrutturaleId);
    
}
