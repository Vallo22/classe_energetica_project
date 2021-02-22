package com.project.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.backend.entità.AssociazioneInterventoCe;

public interface AssociazioneInterventoCeRepository extends JpaRepository<AssociazioneInterventoCe, Long> {

	List<AssociazioneInterventoCe> findByCaratteristicaAssociazioneInterventoIdAndStrutturaAssociazioneIdAndInterventoId(Long caratteristicaAssociazioneInterventoId, Long strutturaAssociazioneId, Long interventoId);
	
	List<AssociazioneInterventoCe> findByCaratteristicaAssociazioneInterventoIdAndStrutturaAssociazioneId(Long caratteristicaAssociazioneInterventoId, Long strutturaAssociazioneId);

	List<AssociazioneInterventoCe> findByStrutturaAssociazioneId(Long strutturaAssociazioneId);

}
