package com.projetRH.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import com.projetRH.domain.Absence;
import com.projetRH.domain.Employee;
import com.projetRH.services.AbsenceService;
import com.projetRH.services.EmployeeService;

@Controller
@SessionScope
@RequestMapping("/absence")
public class AbsenceController {

	@Autowired
	AbsenceService absenceService;
	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping("/add")
	public ModelAndView addAbsence(long id) {
		Absence absence = new Absence();
		Employee employee = employeeService.findById(id);
		
		ModelAndView model = new ModelAndView("/addAbsence", "absence", absence);
		model.addObject("employee", employee);
		
		return model;
	}
	
	@RequestMapping("/save")
	public ModelAndView saveAbsence(Absence absence) {
	
		absenceService.add(absence);
		
		ModelAndView model = new ModelAndView("/listAbsence");
		List<Absence> listAbsences = new ArrayList<Absence>();
		listAbsences = absenceService.findAll();
		
		model.addObject("absence", listAbsences);
		
		return model;
	}
	
	@RequestMapping("/list")
	public ModelAndView listAbsence() {
		
		ModelAndView model = new ModelAndView("/listAbsence");
		List<Absence> listAbsences = new ArrayList<Absence>();
		listAbsences = absenceService.findAll();
		
		model.addObject("absence", listAbsences);
		
		return model;
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteAbsence(long id) {
		
		Absence absence = absenceService.findById(id);
		absenceService.delete(absence);
		
		ModelAndView model = new ModelAndView("redirect:list");
		
		return model;
	}
	
	@RequestMapping("/edit")
	public ModelAndView editAbsence(long id) {
		
		Absence absence = absenceService.findById(id);
		
		ModelAndView model = new ModelAndView("/updateAbsence", "absence", absence);
		
		return model;
	}
	
	@RequestMapping("/update")
	public ModelAndView updateAbsence(Absence absence) {
		
		absenceService.update(absence);
		
		ModelAndView model = new ModelAndView("redirect:list");
		
		return model;
	}
}
