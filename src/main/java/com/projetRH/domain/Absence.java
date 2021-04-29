package com.projetRH.domain;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the ABSENCE database table.
 * 
 */
@Entity
@Table(name = "ABSENCE")
public class Absence implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "ABSENCE_SEQ")
    @SequenceGenerator(name = "ABSENCE_SEQ", sequenceName = "ABSENCE_SEQ", allocationSize = 1)
	@Column(name = "ID_ABSENCE", unique = true, nullable = false, precision = 22, scale = 0)
	private long idAbsence;

	private String justification;

	@Column(name="NB_DAY")
	private BigDecimal nbDay;

	private String reason;

	//bi-directional many-to-one association to Employee
	@ManyToOne
	@JoinColumn(name="ID_EMPLOYEE")
	private Employee employee;

	public Absence() {
	}

	public long getIdAbsence() {
		return this.idAbsence;
	}

	public void setIdAbsence(long idAbsence) {
		this.idAbsence = idAbsence;
	}

	public String getJustification() {
		return this.justification;
	}

	public void setJustification(String justification) {
		this.justification = justification;
	}

	public BigDecimal getNbDay() {
		return this.nbDay;
	}

	public void setNbDay(BigDecimal nbDay) {
		this.nbDay = nbDay;
	}

	public String getReason() {
		return this.reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

}