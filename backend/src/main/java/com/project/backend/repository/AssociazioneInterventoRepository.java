package com.project.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.backend.entità.AssociazioneIntervento;

public interface AssociazioneInterventoRepository extends JpaRepository<AssociazioneIntervento, Long> {

	List<AssociazioneIntervento> findByCaratteristicaAssociazioneInterventoIdAndStrutturaAssociazioneIdAndInterventoId(Long caratteristicaAssociazioneInterventoId, Long strutturaAssociazioneId, Long interventoId);
	
	List<AssociazioneIntervento> findByCaratteristicaAssociazioneInterventoIdAndStrutturaAssociazioneId(Long caratteristicaAssociazioneInterventoId, Long strutturaAssociazioneId);

	List<AssociazioneIntervento>findByStrutturaAssociazioneId(Long strutturaAssociazioneId);

}
