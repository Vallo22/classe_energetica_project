package com.project.backend.entità;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "qualitySt")
public class QualitySt {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id; 

    @Column
    private String Quality;

    public String getQuality() {
        return Quality;
    }

    public void setQuality(String quality) {
        Quality = quality;
    }

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable 
    private List<EdificioSt> edificio;

    @ManyToOne(cascade = CascadeType.ALL)
    private TypeQualitySt tQuality;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public TypeQualitySt gettQuality() {
        return tQuality;
    }

    public void settQuality(TypeQualitySt tQuality) {
        this.tQuality = tQuality;
    }

    public void setEdificio(List<EdificioSt> edificio) {
        this.edificio = edificio;
    }

}
