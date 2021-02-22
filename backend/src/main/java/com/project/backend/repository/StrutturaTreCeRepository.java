package com.project.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.backend.entità.StrutturaTreCe;

public interface StrutturaTreCeRepository extends JpaRepository<StrutturaTreCe, Long>{
	@Query("SELECT s FROM StrutturaTreCe s JOIN s.carattQualit as carLink with carLink.id = ?1")
	List<StrutturaTreCe> findByCaratteristicaQualitativa(Long caratteristicaQualitativa);

}
