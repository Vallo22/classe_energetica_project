package com.project.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.backend.entità.StrutturaTre;

public interface StrutturaTreRepository extends JpaRepository<StrutturaTre, Long>{
	@Query("SELECT s FROM StrutturaTre s JOIN s.carattQualit as carLink with carLink.id = ?1")
	List<StrutturaTre> findByCaratteristicaQualitativa(Long caratteristicaQualitativa);

}
