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
@Table(name = "associazioneIntervento")
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

	public StrutturaTre getStrutturaAssociazione() {
		return strutturaAssociazione;
	}

	public void setStrutturaAssociazione(StrutturaTre strutturaAssociazione) {
		this.strutturaAssociazione = strutturaAssociazione;
	}

    
    @Column
    private int modicitaDiCosto;

	public int getModicitaDiCosto() {
		return modicitaDiCosto;
	}

	public void setModicitaDiCosto(int modicitaDiCosto) {
		this.modicitaDiCosto = modicitaDiCosto;
	}
    
    /*
    private int efficacia;
    private int supIntonacate;
    private int supEvIi;
    private int supIvEi;
    private int reversibilita;
    private int semplicitaDiCantiere;
    private int esiguitaDiIngombro;*/
    
}
