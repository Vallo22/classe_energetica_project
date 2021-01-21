package com.project.backend.entità;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CaratteristicheQualitative")
public class CaratteristicheQualitative {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column
    private String CaratteristicheQualitative;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCaratteristicheQualitative() {
		return CaratteristicheQualitative;
	}

	public void setCaratteristicheQualitative(String caratteristicheQualitative) {
		CaratteristicheQualitative = caratteristicheQualitative;
	}
}
