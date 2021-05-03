package com.projetRH.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import com.projetRH.domain.Employee;
import com.projetRH.domain.Sanction;
import com.projetRH.services.EmployeeService;
import com.projetRH.services.SanctionService;

@Controller
@SessionScope
@RequestMapping("/sanction")
public class SanctionController {

	@Autowired
	SanctionService sanctionService;
	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping("/add")
	public ModelAndView addSanction(long id) {
		Sanction sanction = new Sanction();
		Employee employee = employeeService.findById(id);

		ModelAndView model = new ModelAndView("/addSanction", "sanction", sanction);

		model.addObject("employee", employee);
		
		return model;
	}
	
	@RequestMapping("/save")
	public ModelAndView saveSanction(Sanction sanction) {
	
		sanctionService.add(sanction);
		
		ModelAndView model = new ModelAndView("/listSanction");
		List<Sanction> listSanctions = new ArrayList<Sanction>();
		listSanctions = sanctionService.findAll();
		
		model.addObject("sanction", listSanctions);
		
		return model;
	}
	
	@RequestMapping("/list")
	public ModelAndView listSanction() {
		
		ModelAndView model = new ModelAndView("/listSanction");
		List<Sanction> listSanctions = new ArrayList<Sanction>();
		listSanctions = sanctionService.findAll();
		
		model.addObject("sanction", listSanctions);
		
		return model;
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteSanction(long id) {
		
		Sanction sanction = sanctionService.findById(id);
		sanctionService.delete(sanction);
		
		ModelAndView model = new ModelAndView("redirect:list");
		
		return model;
	}
	
	@RequestMapping("/edit")
	public ModelAndView editSanction(long id) {
		
		Sanction sanction = sanctionService.findById(id);
		
		ModelAndView model = new ModelAndView("/updateSanction", "sanction", sanction);
		
		return model;
	}
	
	@RequestMapping("/update")
	public ModelAndView updateSanction(Sanction sanction) {
		
		sanctionService.update(sanction);
		
		ModelAndView model = new ModelAndView("redirect:list");
		
		return model;
	}
}
