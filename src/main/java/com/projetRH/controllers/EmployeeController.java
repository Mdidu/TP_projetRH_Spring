package com.projetRH.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import com.projetRH.domain.Employee;
import com.projetRH.services.EmployeeService;

@Controller
@SessionScope
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping("/add")
	public ModelAndView addEmploye() {
		Employee employe = new Employee();
		ModelAndView model = new ModelAndView("/addEmp", "employee", employe);
		
		return model;
	}
	
	@RequestMapping("/save")
    public ModelAndView saveEmploye(Employee employe ) {
        
		employeeService.add(employe);
        
        ModelAndView model = new ModelAndView("/listEmp");
        List<Employee> listEmploye = new ArrayList<Employee>();
        listEmploye = employeeService.findAll();

        model.addObject("employe", listEmploye);
        
        return model;
    }
	
	@RequestMapping("/list")
    public ModelAndView listEmploye() {
        
        ModelAndView model = new ModelAndView("/listEmp");
        List<Employee> listEmploye = new ArrayList<Employee>();
        listEmploye = employeeService.findAll();

        model.addObject("employe",listEmploye);
        
        return model;
    }
	
	@RequestMapping("/delete")
	public ModelAndView delete(long id) {
		
		Employee employe = employeeService.findById(id);
		employeeService.delete(employe);
		ModelAndView model = new ModelAndView("redirect:list");
		
		return model;
	}
	
	@RequestMapping("/edit")
	public ModelAndView edit(long id) {

		Employee employe = employeeService.findById(id);
		
		ModelAndView model = new ModelAndView("/updateEmp", "employee", employe);
		
		return model;
	}
	
	@RequestMapping("/update")
	public ModelAndView updateEmploye(Employee employe) {

		
		employeeService.update(employe);
		
		ModelAndView model = new ModelAndView("redirect:list");
		
		return model;
	}
}
