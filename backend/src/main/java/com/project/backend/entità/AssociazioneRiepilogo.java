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
    private int percentuale;

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

    public int getPercentuale() {
        return this.percentuale;
    }

    public void setPercentuale(int percentuale) {
        this.percentuale = percentuale;
    }
    
}
