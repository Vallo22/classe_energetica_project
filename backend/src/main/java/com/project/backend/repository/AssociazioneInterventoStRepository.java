package com.project.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.backend.entità.AssociazioneInterventoSt;


public interface AssociazioneInterventoStRepository extends JpaRepository<AssociazioneInterventoSt, Long> {
	List<AssociazioneInterventoSt> findByCaratteristicaAssociazioneInterventoIdAndStrutturaAssociazioneIdAndInterventoId(Long caratteristicaAssociazioneInterventoId, Long strutturaAssociazioneId, Long interventoId);
	
	List<AssociazioneInterventoSt> findByCaratteristicaAssociazioneInterventoIdAndStrutturaAssociazioneId(Long caratteristicaAssociazioneInterventoId, Long strutturaAssociazioneId);

	List<AssociazioneInterventoSt>findByStrutturaAssociazioneId(Long strutturaAssociazioneId);
}
