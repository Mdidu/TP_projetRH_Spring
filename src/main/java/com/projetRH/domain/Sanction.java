package com.projetRH.domain;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the SANCTION database table.
 * 
 */
@Entity
@Table(name = "SANCTION")
public class Sanction implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "SANCTION_SEQ")
    @SequenceGenerator(name = "SANCTION_SEQ", sequenceName = "SANCTION_SEQ", allocationSize = 1)
	@Column(name = "ID_SANCTION", unique = true, nullable = false, precision = 22, scale = 0)
	private long idSanction;

	private String description;

	@Column(name="SANCTION_TYPE")
	private String sanctionType;

	//bi-directional many-to-one association to Employee
	@ManyToOne
	@JoinColumn(name="ID_EMPLOYEE")
	private Employee employee;

	public Sanction() {
	}

	public long getIdSanction() {
		return this.idSanction;
	}

	public void setIdSanction(long idSanction) {
		this.idSanction = idSanction;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSanctionType() {
		return this.sanctionType;
	}

	public void setSanctionType(String sanctionType) {
		this.sanctionType = sanctionType;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

}