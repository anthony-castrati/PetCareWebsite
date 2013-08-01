package com.castrati.capcitypetcare.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.castrati.capcitypetcare.beans.ContactForm;

 
@Controller
@RequestMapping(value="/")
public class HelloController {
 
	@RequestMapping(method = RequestMethod.GET, value = "home")
	public String test(ModelMap model) {
 
		model.addAttribute("title", "Home");
		return "welcomePage";
 
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "about")
	public String add(ModelMap model) {
 
		model.addAttribute("title", "About");
		return "about";
 
	}

	@RequestMapping(method = RequestMethod.GET, value = "contact")
	public String heylexi(ModelMap model) {
		ContactForm bean = new ContactForm();
		model.addAttribute("contactForm", bean);
		model.addAttribute("title", "Contact");
		return "contact";
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "contactForm")
	public String testing(@Valid ContactForm contactForm, BindingResult result, ModelMap model) {
		if(result.hasErrors()){
			//model.addAttribute("contactForm",contactForm);
			return "contact";   //go back to contact
		}else
			return add(model);  //go to home
 
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "services")
	public String services(ModelMap model) {
 
		model.addAttribute("title", "Services");
		return "services";
 
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "servicearea")
	public String serviceArea(ModelMap model) {
 
		model.addAttribute("title", "Service Area");
		return "servicearea";
 
	}
	
 
}