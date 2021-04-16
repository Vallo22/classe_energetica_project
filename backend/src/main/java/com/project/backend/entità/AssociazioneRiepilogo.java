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
@Table(name = "associazioneRiepilogo")
public class AssociazioneRiepilogo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne(cascade = CascadeType.ALL)
    private AssociazioneInterventoSt associazioneInterventoStrutturale;

    @ManyToOne(cascade = CascadeType.ALL)
    private AssociazioneInterventoCe associazioneInterventoEnergetico;

    @Column
    private double risparmioEuro;
    private String attrezzature;

    public long getId() {
        return this.id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public AssociazioneInterventoSt getAssociazioneInterventoStrutturale() {
        return this.associazioneInterventoStrutturale;
    }

    public void setAssociazioneInterventoStrutturale(AssociazioneInterventoSt associazioneInterventoStrutturale) {
        this.associazioneInterventoStrutturale = associazioneInterventoStrutturale;
    }

    public AssociazioneInterventoCe getAssociazioneInterventoEnergetico() {
        return this.associazioneInterventoEnergetico;
    }

    public void setAssociazioneInterventoEnergetico(AssociazioneInterventoCe associazioneInterventoEnergetico) {
        this.associazioneInterventoEnergetico = associazioneInterventoEnergetico;
    }

    public double getRisparmioEuro() {
        return this.risparmioEuro;
    }

    public void setRisparmioEuro(double risparmioEuro) {
        this.risparmioEuro = risparmioEuro;
    }

    public String getAttrezzature() {
        return this.attrezzature;
    }

    public void setAttrezzature(String attrezzature) {
        this.attrezzature = attrezzature;
    }
       
}
