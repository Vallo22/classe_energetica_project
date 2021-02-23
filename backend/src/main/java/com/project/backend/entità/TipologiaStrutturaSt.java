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
@Table(name = "tipologiaStrutturaSt")
public class TipologiaStrutturaSt {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    
    @Column
    private String TipologiaStruttura;

    @ManyToMany(cascade = CascadeType.ALL)
    private List<CaratteristicheQualitativeSt> carQualEms;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTipologiaStrutture() {
        return TipologiaStruttura;
    }

    public void setTipologiaStrutture(String tipologiaStrutture) {
        TipologiaStruttura = tipologiaStrutture;
    }

    public List<CaratteristicheQualitativeSt> getCarQualEms() {
        return carQualEms;
    }

    public void setCarQualEms(List<CaratteristicheQualitativeSt> carQualEms) {
        this.carQualEms = carQualEms;
    }
    
}
