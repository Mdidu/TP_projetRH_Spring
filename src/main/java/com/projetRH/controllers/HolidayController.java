package com.projetRH.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import com.projetRH.domain.Holiday;
import com.projetRH.services.HolidayService;

@Controller
@SessionScope
public class HolidayController {

	@Autowired
	HolidayService holidayService;
	
	@RequestMapping("/addHoliday")
	public ModelAndView addHoliday() {
		Holiday holiday = new Holiday();
		ModelAndView model = new ModelAndView("addHoliday", "holiday", holiday);
		
		return model;
	}
	
	@RequestMapping("/saveHoliday")
	public ModelAndView saveHoliday(Holiday holiday) {
	
		holidayService.add(holiday);
		
		ModelAndView model = new ModelAndView("listHoliday");
		List<Holiday> listHolidays = new ArrayList<Holiday>();
		listHolidays = holidayService.findAll();
		
		model.addObject("holiday", listHolidays);
		
		return model;
	}
	
	@RequestMapping("/listHoliday")
	public ModelAndView listHoliday() {
		
		ModelAndView model = new ModelAndView("listHoliday");
		List<Holiday> listHolidays = new ArrayList<Holiday>();
		listHolidays = holidayService.findAll();
		
		model.addObject("holiday", listHolidays);
		
		return model;
	}
	
	@RequestMapping("/deleteHoliday")
	public ModelAndView deleteHoliday(long id) {
		
		Holiday holiday = holidayService.findById(id);
		holidayService.delete(holiday);
		
		ModelAndView model = new ModelAndView("redirect:/listHoliday");
		
		return model;
	}
	
	@RequestMapping("/editHoliday")
	public ModelAndView editHoliday(long id) {
		
		Holiday holiday = holidayService.findById(id);
		
		ModelAndView model = new ModelAndView("updateHoliday", "holiday", holiday);
		
		return model;
	}
	
	@RequestMapping("/updateHoliday")
	public ModelAndView updateHoliday(Holiday holiday) {
		
		holidayService.update(holiday);
		
		ModelAndView model = new ModelAndView("redirect:/listHoliday");
		
		return model;
	}
	
}
