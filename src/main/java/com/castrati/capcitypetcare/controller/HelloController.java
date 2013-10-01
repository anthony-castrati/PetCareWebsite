package com.castrati.capcitypetcare.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;

import com.castrati.capcitypetcare.beans.ContactForm;
import com.castrati.capcitypetcare.beans.EmailHandler;

@Controller
@RequestMapping(value="/")
public class HelloController {

	@Autowired
	private EmailHandler eh;

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
        }else{
        	eh.sendMessage(contactForm);
            return add(model);  //go to home
        }
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

   @RequestMapping(method = RequestMethod.GET, value = "clients")
    public String clients(ModelMap model) {
	   	   
        model.addAttribute("title", "Our Clients");
        return "clients";

    }

}
