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
@Table(name = "edificioSt")
public class EdificioSt{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id; 
    
    @Column
    private String Valutazione;
    private String Descrizione;
    private int Punteggio;
    private int tipologia;

    @ManyToOne(cascade = CascadeType.ALL)
    private QualitySt quality;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getValutazione() {
        return Valutazione;
    }

    public void setValutazione(String valutazione) {
        Valutazione = valutazione;
    }

    public String getDescrizione() {
        return Descrizione;
    }

    public void setDescrizione(String descrizione) {
        Descrizione = descrizione;
    }

    public int getPunteggio() {
        return Punteggio;
    }

    public void setPunteggio(int punteggio) {
        Punteggio = punteggio;
    }

    public int getTipologia() {
        return tipologia;
    }

    public void setTipologia(int tipologia) {
        this.tipologia = tipologia;
    }

    public QualitySt getQuality() {
        return quality;
    }

    public void setQuality(QualitySt quality) {
        this.quality = quality;
    }
}
