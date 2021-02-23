package com.project.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.backend.entità.StrutturaSt;


public interface StrutturaStRepository extends JpaRepository<StrutturaSt, Long> {
	@Query("SELECT s FROM StrutturaSt s JOIN s.carQuality as carLink with carLink.id = ?1")
	List<StrutturaSt> findByCaratteristicaQualitativa(Long caratteristicaQualitativa);
	
}
