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
@Table(name = "strutturaDue")
public class StrutturaDue {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column
    private String strutturaDue;
    
    @ManyToOne(cascade = CascadeType.ALL)
    private Struttura struttura_id;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getStrutturaDue() {
		return strutturaDue;
	}

	public void setStrutturaDue(String strutturaDue) {
		this.strutturaDue = strutturaDue;
	}
	
	public Struttura getStruttura_id() {
		return struttura_id;
	}

	public void setStruttura_id(Struttura struttura_id) {
		this.struttura_id = struttura_id;
	}

}
