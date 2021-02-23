package com.project.backend.entità;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "caratteristicheQualitativeSt")
public class CaratteristicheQualitativeSt {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column
    private String CaratteristicheQualitative;

    @ManyToMany(cascade = CascadeType.ALL)
    private List<MeccanismiSt> meccanismiAssociati;

    @OneToMany(cascade = CascadeType.ALL)
    @JoinTable 
    private List<ValutazionePunteggioSt> valutazionePunteggio;

    public String getCaratteristicheQualitative() {
        return CaratteristicheQualitative;
    }

    public void setCaratteristicheQualitative(String caratteristicheQualitative) {
        this.CaratteristicheQualitative = caratteristicheQualitative;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public List<MeccanismiSt> getMeccanismiAssociati() {
        return meccanismiAssociati;
    }

    public void setMeccanismiAssociati(List<MeccanismiSt> meccanismiAssociati) {
        this.meccanismiAssociati = meccanismiAssociati;
    }

    public List<ValutazionePunteggioSt> getValutazionePunteggio() {
        return valutazionePunteggio;
    }

    public void setValutazionePunteggio(List<ValutazionePunteggioSt> valutazionePunteggio) {
        this.valutazionePunteggio = valutazionePunteggio;
    }
}
