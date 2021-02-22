package com.project.backend.entità;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="strutturaTreCe")
public class StrutturaTreCe {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column
    private String strutturaTre;
    
    @ManyToOne(cascade = CascadeType.ALL)
    private StrutturaDueCe struttura_due_id;
    
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<CaratteristicheQualitativeCe> carattQualit;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getStrutturaTre() {
		return strutturaTre;
	}

	public void setStrutturaTre(String strutturaTre) {
		this.strutturaTre = strutturaTre;
	}

	public StrutturaDueCe getStruttura_due_id() {
		return struttura_due_id;
	}

	public void setStruttura_due_id(StrutturaDueCe struttura_due_id) {
		this.struttura_due_id = struttura_due_id;
	}
	
	public List<CaratteristicheQualitativeCe> getCarattQualit() {
		return carattQualit;
	}

	public void setCarattQualit(List<CaratteristicheQualitativeCe> carattQualit) {
		this.carattQualit = carattQualit;
	}

}
