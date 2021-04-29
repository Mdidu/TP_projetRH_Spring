package com.projetRH.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import com.projetRH.domain.Absence;
import com.projetRH.services.AbsenceService;

@Controller
@SessionScope
public class AbsenceController {

	@Autowired
	AbsenceService absenceService;
	
	@RequestMapping("/addAbsence")
	public ModelAndView addAbsence() {
		Absence absence = new Absence();
		ModelAndView model = new ModelAndView("addAbsence", "absence", absence);
		
		return model;
	}
	
	@RequestMapping("/saveAbsence")
	public ModelAndView saveAbsence(Absence absence) {
	
		absenceService.add(absence);
		
		ModelAndView model = new ModelAndView("listAbsence");
		List<Absence> listAbsences = new ArrayList<Absence>();
		listAbsences = absenceService.findAll();
		
		model.addObject("absence", listAbsences);
		
		return model;
	}
	
	@RequestMapping("/listAbsence")
	public ModelAndView listAbsence() {
		
		ModelAndView model = new ModelAndView("listAbsence");
		List<Absence> listAbsences = new ArrayList<Absence>();
		listAbsences = absenceService.findAll();
		
		model.addObject("absence", listAbsences);
		
		return model;
	}
	
	@RequestMapping("/deleteAbsence")
	public ModelAndView deleteAbsence(long id) {
		
		Absence absence = absenceService.findById(id);
		absenceService.delete(absence);
		
		ModelAndView model = new ModelAndView("redirect:/listAbsence");
		
		return model;
	}
	
	@RequestMapping("/editAbsence")
	public ModelAndView editAbsence(long id) {
		
		Absence absence = absenceService.findById(id);
		
		ModelAndView model = new ModelAndView("updateAbsence", "absence", absence);
		
		return model;
	}
	
	@RequestMapping("/updateAbsence")
	public ModelAndView updateAbsence(Absence absence) {
		
		absenceService.update(absence);
		
		ModelAndView model = new ModelAndView("redirect:/listAbsence");
		
		return model;
	}
}
