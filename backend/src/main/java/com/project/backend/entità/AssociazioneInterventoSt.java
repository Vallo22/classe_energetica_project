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
@Table(name = "associazioneInterventoSt")
public class AssociazioneInterventoSt {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne(cascade = CascadeType.ALL)
    private CodiceInterventoSt intervento;

    @ManyToOne(cascade = CascadeType.ALL)
    private CaratteristicheQualitativeSt caratteristicaAssociazioneIntervento;

    @ManyToOne(cascade = CascadeType.ALL)
    private StrutturaSt strutturaAssociazione;

    @Column
    private int modicitaDiCosto;
    private int efficacia;
    private int supIntonacate;
    private int supVista;
    private int reversibilita;
    private int semplicitaDiCantiere;
    private int esiguitaDiIngombro;
    private String variante;
    private double prezzo;
    private double prezzoSupInt;
    private double prezzoEntrInt;
    private double prezzoRiepilogo;
    private double prezzoRiepilogoDue;
    private double prezzoRiepilogoTre;
    private String unitaMisura;
    private int passaggio;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public CodiceInterventoSt getIntervento() {
        return intervento;
    }

    public void setIntervento(CodiceInterventoSt intervento) {
        this.intervento = intervento;
    }

    public CaratteristicheQualitativeSt getCaratteristicaAssociazioneIntervento() {
        return caratteristicaAssociazioneIntervento;
    }

    public void setCaratteristicaAssociazioneIntervento(
            CaratteristicheQualitativeSt caratteristicaAssociazioneIntervento) {
        this.caratteristicaAssociazioneIntervento = caratteristicaAssociazioneIntervento;
    }

    public StrutturaSt getStrutturaAssociazione() {
        return strutturaAssociazione;
    }

    public void setStrutturaAssociazione(StrutturaSt strutturaAssociazione) {
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

    public int getSupVista() {
        return supVista;
    }

    public void setSupVista(int supVista) {
        this.supVista = supVista;
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

    public double getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(double prezzo) {
        this.prezzo = prezzo;
    }
    

    public double getPrezzoSupInt() {
		return prezzoSupInt;
	}

	public void setPrezzoSupInt(double prezzoSupInt) {
		this.prezzoSupInt = prezzoSupInt;
	}

	public double getPrezzoEntrInt() {
		return prezzoEntrInt;
	}

	public void setPrezzoEntrInt(double prezzoEntrInt) {
		this.prezzoEntrInt = prezzoEntrInt;
	}

    public double getPrezzoRiepilogo() {
        return this.prezzoRiepilogo;
    }

    public void setPrezzoRiepilogo(double prezzoRiepilogo) {
        this.prezzoRiepilogo = prezzoRiepilogo;
    }

    public double getPrezzoRiepilogoDue() {
        return this.prezzoRiepilogoDue;
    }

    public void setPrezzoRiepilogoDue(double prezzoRiepilogoDue) {
        this.prezzoRiepilogoDue = prezzoRiepilogoDue;
    }

    public double getPrezzoRiepilogoTre() {
        return this.prezzoRiepilogoTre;
    }

    public void setPrezzoRiepilogoTre(double prezzoRiepilogoTre) {
        this.prezzoRiepilogoTre = prezzoRiepilogoTre;
    }

	public String getUnitaMisura() {
        return unitaMisura;
    }

    public void setUnitaMisura(String unitaMisura) {
        this.unitaMisura = unitaMisura;
    }

    public int getPassaggio() {
        return passaggio;
    }

    public void setPassaggio(int passaggio) {
        this.passaggio = passaggio;
    }
}
