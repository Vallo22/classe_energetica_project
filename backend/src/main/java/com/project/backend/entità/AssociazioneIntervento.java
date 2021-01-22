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
@Table(name = "AssociazioneIntervento")
public class AssociazioneIntervento {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne(cascade = CascadeType.ALL)
    private CodiceIntervento intervento;

    @ManyToOne(cascade = CascadeType.ALL)
    private CaratteristicheQualitative caratteristicaAssociazioneIntervento;

    @ManyToOne(cascade = CascadeType.ALL)
    private StrutturaTre strutturaAssociazione;

    /*
    @Column
    private int modicitaDiCosto;
    
    private int efficacia;
    private int supIntonacate;
    private int supEvIi;
    private int supIvEi;
    private int reversibilita;
    private int semplicitaDiCantiere;
    private int esiguitaDiIngombro;
    
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public CodiceIntervento getIntervento() {
		return intervento;
	}
	public void setIntervento(CodiceIntervento intervento) {
		this.intervento = intervento;
	}
	public CaratteristicheQualitative getCaratteristicaAssociazioneIntervento() {
		return caratteristicaAssociazioneIntervento;
	}
	public void setCaratteristicaAssociazioneIntervento(CaratteristicheQualitative caratteristicaAssociazioneIntervento) {
		this.caratteristicaAssociazioneIntervento = caratteristicaAssociazioneIntervento;
	}
	public Struttura getStrutturaAssociazione() {
		return strutturaAssociazione;
	}
	public void setStrutturaAssociazione(Struttura strutturaAssociazione) {
		this.strutturaAssociazione = strutturaAssociazione;
	}
	public int getModicitaDiCosto() {
		return modicitaDiCosto;
	}
	public void setModicitaDiCosto(int modicitaDiCosto) {
		this.modicitaDiCosto = modicitaDiCosto;
	}
	public int getEfficacia() {
		return efficacia;
	}
	public void setEfficacia(int efficacia) {
		this.efficacia = efficacia;
	}
	public int getSupIntonacate() {
		return supIntonacate;
	}
	public void setSupIntonacate(int supIntonacate) {
		this.supIntonacate = supIntonacate;
	}
	public int getSupEvIi() {
		return supEvIi;
	}
	public void setSupEvIi(int supEvIi) {
		this.supEvIi = supEvIi;
	}
	public int getSupIvEi() {
		return supIvEi;
	}
	public void setSupIvEi(int supIvEi) {
		this.supIvEi = supIvEi;
	}
	public int getReversibilita() {
		return reversibilita;
	}
	public void setReversibilita(int reversibilita) {
		this.reversibilita = reversibilita;
	}
	public int getSemplicitaDiCantiere() {
		return semplicitaDiCantiere;
	}
	public void setSemplicitaDiCantiere(int semplicitaDiCantiere) {
		this.semplicitaDiCantiere = semplicitaDiCantiere;
	}
	public int getEsiguitaDiIngombro() {
		return esiguitaDiIngombro;
	}
	public void setEsiguitaDiIngombro(int esiguitaDiIngombro) {
		this.esiguitaDiIngombro = esiguitaDiIngombro;
	}*/
    
}
