package com.project.backend.entità;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "strutturaSt")
public class StrutturaSt {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column
    private String struttura;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<CaratteristicheQualitativeSt> carQuality;

    @ManyToOne(cascade = CascadeType.ALL)
    private TypeStrutturaSt tipoStruttura;

    public String getStruttura() {
        return struttura;
    }

    public void setStruttura(String struttura) {
        this.struttura = struttura;
    }

    public List<CaratteristicheQualitativeSt> getCarQuality() {
        return carQuality;
    }

    public void setCarQuality(List<CaratteristicheQualitativeSt> carQuality) {
        this.carQuality = carQuality;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public TypeStrutturaSt getTipoStruttura() {
        return tipoStruttura;
    }

    public void setTipoStruttura(TypeStrutturaSt tipoStruttura) {
        this.tipoStruttura = tipoStruttura;
    }
    
}
