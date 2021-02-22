package com.project.backend.entità;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "indicatoreCe")
public class IndicatoreCe {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id; 

    @Column
    private String indicatore;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getIndicatore() {
		return indicatore;
	}

	public void setIndicatore(String indicatore) {
		this.indicatore = indicatore;
	}
    

}
