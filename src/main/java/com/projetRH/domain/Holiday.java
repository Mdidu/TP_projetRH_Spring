package com.projetRH.domain;

import java.io.Serializable;
import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the HOLIDAY database table.
 * 
 */
@Entity
@Table(name = "HOLIDAY")
public class Holiday implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "HOLIDAY_SEQ")
    @SequenceGenerator(name = "HOLIDAY_SEQ", sequenceName = "HOLIDAY_SEQ", allocationSize = 1)
	@Column(name = "ID_HOLIDAY", unique = true, nullable = false, precision = 22, scale = 0)
	private long idHoliday;

	@Column(name="END_DATE")
	@DateTimeFormat(fallbackPatterns = {"yyyy/MM/dd", "yyyy-MM-dd"})
	private Date endDate;

	@Column(name="HOLIDAY_PAY")
	private BigDecimal holidayPay;

	@Column(name="REQUEST_DATE")
	@DateTimeFormat(fallbackPatterns = {"yyyy/MM/dd", "yyyy-MM-dd"})
	private Date requestDate;

	@Column(name="START_DATE")
	@DateTimeFormat(fallbackPatterns = {"yyyy/MM/dd", "yyyy-MM-dd"})
	private Date startDate;

	//bi-directional many-to-one association to Employee
	@ManyToOne
	@JoinColumn(name="ID_EMPLOYEE")
	private Employee employee;

	public Holiday() {
	}

	public long getIdHoliday() {
		return this.idHoliday;
	}

	public void setIdHoliday(long idHoliday) {
		this.idHoliday = idHoliday;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public BigDecimal getHolidayPay() {
		return this.holidayPay;
	}

	public void setHolidayPay(BigDecimal holidayPay) {
		this.holidayPay = holidayPay;
	}

	public Date getRequestDate() {
		return this.requestDate;
	}

	public void setRequestDate(Date requestDate) {
		this.requestDate = requestDate;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

}