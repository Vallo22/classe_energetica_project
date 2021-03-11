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
@Table(name = "associazioneInterventoCe")
public class AssociazioneInterventoCe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne(cascade = CascadeType.ALL)
    private CodiceInterventoCe intervento;

    @ManyToOne(cascade = CascadeType.ALL)
    private CaratteristicheQualitativeCe caratteristicaAssociazioneIntervento;

    @ManyToOne(cascade = CascadeType.ALL)
    private StrutturaTreCe strutturaAssociazione;
    
    @Column
    private int modicitaDiCosto;
    private int efficacia;
    private int supIntonacate;
    private int supEvIi;
    private int supIvEi;
    private int reversibilita;
    private int semplicitaDiCantiere;
    private int esiguitaDiIngombro;
    private String variante;
    private double prezzoVista;
    private double prezzoInton;
    private String unitaMisura;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public CodiceInterventoCe getIntervento() {
		return intervento;
	}

	public void setIntervento(CodiceInterventoCe intervento) {
		this.intervento = intervento;
	}

	public CaratteristicheQualitativeCe getCaratteristicaAssociazioneIntervento() {
		return caratteristicaAssociazioneIntervento;
	}

	public void setCaratteristicaAssociazioneIntervento(CaratteristicheQualitativeCe caratteristicaAssociazioneIntervento) {
		this.caratteristicaAssociazioneIntervento = caratteristicaAssociazioneIntervento;
	}

	public StrutturaTreCe getStrutturaAssociazione() {
		return strutturaAssociazione;
	}

	public void setStrutturaAssociazione(StrutturaTreCe strutturaAssociazione) {
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
	}

	public String getVariante() {
		return variante;
	}

	public void setVariante(String variante) {
		this.variante = variante;
	}

	public double getPrezzoVista() {
		return prezzoVista;
	}

	public void setPrezzoVista(double prezzoVista) {
		this.prezzoVista = prezzoVista;
	}

	public double getPrezzoInton() {
		return prezzoInton;
	}

	public void setPrezzoInton(double prezzoInton) {
		this.prezzoInton = prezzoInton;
	}

	public String getUnitaMisura() {
		return unitaMisura;
	}

	public void setUnitaMisura(String unitaMisura) {
		this.unitaMisura = unitaMisura;
	}
		
}
