package com.projetRH.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import com.projetRH.domain.Sanction;
import com.projetRH.services.SanctionService;

@Controller
@SessionScope
public class SanctionController {

	@Autowired
	SanctionService sanctionService;
	
	@RequestMapping("/addSanction")
	public ModelAndView addSanction() {
		Sanction sanction = new Sanction();
		ModelAndView model = new ModelAndView("addSanction", "sanction", sanction);
		
		return model;
	}
	
	@RequestMapping("/saveSanction")
	public ModelAndView saveSanction(Sanction sanction) {
	
		sanctionService.add(sanction);
		
		ModelAndView model = new ModelAndView("listSanction");
		List<Sanction> listSanctions = new ArrayList<Sanction>();
		listSanctions = sanctionService.findAll();
		
		model.addObject("sanction", listSanctions);
		
		return model;
	}
	
	@RequestMapping("/listSanction")
	public ModelAndView listSanction() {
		
		ModelAndView model = new ModelAndView("listSanction");
		List<Sanction> listSanctions = new ArrayList<Sanction>();
		listSanctions = sanctionService.findAll();
		
		model.addObject("sanction", listSanctions);
		
		return model;
	}
	
	@RequestMapping("/deleteSanction")
	public ModelAndView deleteSanction(long id) {
		
		Sanction sanction = sanctionService.findById(id);
		sanctionService.delete(sanction);
		
		ModelAndView model = new ModelAndView("redirect:/listSanction");
		
		return model;
	}
	
	@RequestMapping("/editSanction")
	public ModelAndView editSanction(long id) {
		
		Sanction sanction = sanctionService.findById(id);
		
		ModelAndView model = new ModelAndView("updateSanction", "sanction", sanction);
		
		return model;
	}
	
	@RequestMapping("/updateSanction")
	public ModelAndView updateSanction(Sanction sanction) {
		
		sanctionService.update(sanction);
		
		ModelAndView model = new ModelAndView("redirect:/listSanction");
		
		return model;
	}
}
