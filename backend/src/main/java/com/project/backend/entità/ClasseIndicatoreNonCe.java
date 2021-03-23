package com.project.backend.entità;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "classeIndicatoreNonCe")
public class ClasseIndicatoreNonCe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id; 
	
	@Column
    private String descrizione;
    private double punteggio;
    
    @ManyToOne(cascade = CascadeType.ALL)
    private IndicatoreNonCe indicatore;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public double getPunteggio() {
		return punteggio;
	}

	public void setPunteggio(double punteggio) {
		this.punteggio = punteggio;
	}

	public IndicatoreNonCe getIndicatore() {
		return indicatore;
	}

	public void setIndicatore(IndicatoreNonCe indicatore) {
		this.indicatore = indicatore;
	}
    
}
