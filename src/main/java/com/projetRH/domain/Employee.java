package com.projetRH.domain;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;


/**
 * The persistent class for the EMPLOYEE database table.
 * 
 */
@Entity
@Table(name = "EMPLOYEE")
public class Employee implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "EMPLOYEE_SEQ")
    @SequenceGenerator(name = "EMPLOYEE_SEQ", sequenceName = "EMPLOYEE_SEQ", allocationSize = 1)
	@Column(name = "ID_EMPLOYEE", unique = true, nullable = false, precision = 22, scale = 0)
	private long idEmployee;

	private String adress;

	private BigDecimal average;

	@Column(name="LAST_NAME")
	private String lastName;

	private String name;

	@Column(name="TEL_NUMBER")
	private String telNumber;

	//bi-directional many-to-one association to Absence
	@OneToMany(mappedBy="employee", cascade = CascadeType.ALL)
	private List<Absence> absences;

	//bi-directional many-to-one association to Holiday
	@OneToMany(mappedBy="employee", cascade = CascadeType.ALL)
	private List<Holiday> holidays;

	//bi-directional many-to-one association to Sanction
	@OneToMany(mappedBy="employee", cascade = CascadeType.ALL)
	private List<Sanction> sanctions;

	public Employee() {
	}

	public long getIdEmployee() {
		return this.idEmployee;
	}

	public void setIdEmployee(long idEmployee) {
		this.idEmployee = idEmployee;
	}

	public String getAdress() {
		return this.adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public BigDecimal getAverage() {
		return this.average;
	}

	public void setAverage(BigDecimal average) {
		this.average = average;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTelNumber() {
		return this.telNumber;
	}

	public void setTelNumber(String telNumber) {
		this.telNumber = telNumber;
	}

	public List<Absence> getAbsences() {
		return this.absences;
	}

	public void setAbsences(List<Absence> absences) {
		this.absences = absences;
	}

	public Absence addAbsence(Absence absence) {
		getAbsences().add(absence);
		absence.setEmployee(this);

		return absence;
	}

	public Absence removeAbsence(Absence absence) {
		getAbsences().remove(absence);
		absence.setEmployee(null);

		return absence;
	}

	public List<Holiday> getHolidays() {
		return this.holidays;
	}

	public void setHolidays(List<Holiday> holidays) {
		this.holidays = holidays;
	}

	public Holiday addHoliday(Holiday holiday) {
		getHolidays().add(holiday);
		holiday.setEmployee(this);

		return holiday;
	}

	public Holiday removeHoliday(Holiday holiday) {
		getHolidays().remove(holiday);
		holiday.setEmployee(null);

		return holiday;
	}

	public List<Sanction> getSanctions() {
		return this.sanctions;
	}

	public void setSanctions(List<Sanction> sanctions) {
		this.sanctions = sanctions;
	}

	public Sanction addSanction(Sanction sanction) {
		getSanctions().add(sanction);
		sanction.setEmployee(this);

		return sanction;
	}

	public Sanction removeSanction(Sanction sanction) {
		getSanctions().remove(sanction);
		sanction.setEmployee(null);

		return sanction;
	}

}