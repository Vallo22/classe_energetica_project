package com.project.backend.entità;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name= "caratteristicheStrutturaSt")
public class CaratteristicheStrutturaSt {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne(cascade = CascadeType.ALL)
    private CaratteristicheQualitativeSt caratteristica;

    @ManyToOne(cascade = CascadeType.ALL)
    private StrutturaSt struttura;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public CaratteristicheQualitativeSt getCaratteristica() {
        return caratteristica;
    }

    public void setCaratteristica(CaratteristicheQualitativeSt caratteristica) {
        this.caratteristica = caratteristica;
    }

    public StrutturaSt getStruttura() {
        return struttura;
    }

    public void setStruttura(StrutturaSt struttura) {
        this.struttura = struttura;
    }

}
