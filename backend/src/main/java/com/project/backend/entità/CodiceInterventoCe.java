package com.project.backend.entità;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "codiceInterventoCe")
public class CodiceInterventoCe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column
    private String codice;
    private String descrizione;
    private String appunto;
    
    @ManyToMany(cascade = CascadeType.ALL)
    private List<AttrezzatureCe> attrezzatureAssociate;

	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getCodice() {
		return codice;
	}
	
	public void setCodice(String codice) {
		this.codice = codice;
	}
	
	public String getDescrizione() {
		return descrizione;
	}
	
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
	public String getAppunto() {
		return appunto;
	}

	public void setAppunto(String appunto) {
		this.appunto = appunto;
	}

	public List<AttrezzatureCe> getAttrezzatureAssociate() {
		return attrezzatureAssociate;
	}

	public void setAttrezzatureAssociate(List<AttrezzatureCe> attrezzatureAssociate) {
		this.attrezzatureAssociate = attrezzatureAssociate;
	}
    
}