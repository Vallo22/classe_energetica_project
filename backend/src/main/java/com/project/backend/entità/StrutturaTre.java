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
@Table(name="strutturaTre")
public class StrutturaTre {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column
    private String strutturaTre;
    
    @ManyToOne(cascade = CascadeType.ALL)
    private StrutturaDue struttura_due_id;

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

	public StrutturaDue getStruttura_due_id() {
		return struttura_due_id;
	}

	public void setStruttura_due_id(StrutturaDue struttura_due_id) {
		this.struttura_due_id = struttura_due_id;
	}

}
