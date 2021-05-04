package com.projetRH.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.projetRH.domain.Employee;
import com.projetRH.domain.Holiday;
import com.projetRH.services.EmployeeService;
import com.projetRH.services.HolidayService;

@Controller
@RequestMapping("/holiday")
public class HolidayController {

	@Autowired
	HolidayService holidayService;
	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping("/add")
	public ModelAndView addHoliday(long id) {
		
		Employee employee = employeeService.findById(id);
		
		Holiday holiday = new Holiday();

		ModelAndView model = new ModelAndView("/addHoliday", "holiday", holiday);

		model.addObject("employee", employee);
		
		return model;
	}
	
	@RequestMapping("/save")
	public ModelAndView saveHoliday(Holiday holiday) {
	
		holidayService.add(holiday);
		
		ModelAndView model = new ModelAndView("/listHoliday");
		List<Holiday> listHolidays = new ArrayList<Holiday>();
		listHolidays = holidayService.findAll();
		
		model.addObject("holiday", listHolidays);
		
		return model;
	}
	
	@RequestMapping("/list")
	public ModelAndView listHoliday() {
		
		ModelAndView model = new ModelAndView("/listHoliday");
		List<Holiday> listHolidays = new ArrayList<Holiday>();
		listHolidays = holidayService.findAll();
		
		model.addObject("holiday", listHolidays);
		
		return model;
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteHoliday(long id) {
		
		Holiday holiday = holidayService.findById(id);
		holidayService.delete(holiday);
		
		ModelAndView model = new ModelAndView("redirect:list");
		
		return model;
	}
	
	@RequestMapping("/edit")
	public ModelAndView editHoliday(long id) {
		
		Holiday holiday = holidayService.findById(id);
		
		ModelAndView model = new ModelAndView("/updateHoliday", "holiday", holiday);
		
		return model;
	}
	
	@RequestMapping("/update")
	public ModelAndView updateHoliday(Holiday holiday) {
		
		holidayService.update(holiday);
		
		ModelAndView model = new ModelAndView("redirect:list");
		
		return model;
	}
	
}
