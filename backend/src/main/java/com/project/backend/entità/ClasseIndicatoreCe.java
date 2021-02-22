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
@Table(name = "classeIndicatoreCe")
public class ClasseIndicatoreCe {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id; 
	
	@Column
    private String descrizione;
    private int punteggio;
    
    @ManyToOne(cascade = CascadeType.ALL)
    private IndicatoreCe indicatore;

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

	public int getPunteggio() {
		return punteggio;
	}

	public void setPunteggio(int punteggio) {
		this.punteggio = punteggio;
	}

	public IndicatoreCe getIndicatore() {
		return indicatore;
	}

	public void setIndicatore(IndicatoreCe indicatore) {
		this.indicatore = indicatore;
	}

}
