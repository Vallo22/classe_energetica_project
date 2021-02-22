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
@Table(name = "strutturaDueCe")
public class StrutturaDueCe {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column
    private String strutturaDue;
    
    @ManyToOne(cascade = CascadeType.ALL)
    private StrutturaCe struttura_id;

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
	
	public StrutturaCe getStruttura_id() {
		return struttura_id;
	}

	public void setStruttura_id(StrutturaCe struttura_id) {
		this.struttura_id = struttura_id;
	}

}
