package com.castrati.capcitypetcare.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;

import com.castrati.capcitypetcare.beans.ContactForm;
import com.castrati.capcitypetcare.beans.EmailHandler;
import com.castrati.capcitypetcare.service.impl.ImageService_Impl;

@Controller
@RequestMapping(value="/")
public class HelloController {

	private static final long CACHE_DURATION_IN_SECOND = 604800;

	private static final long CACHE_DURATION_IN_MS = CACHE_DURATION_IN_SECOND * 1000;

	@Autowired
	private EmailHandler eh;
	
	@Autowired 
	ImageService_Impl imageService;
	
	@Value("${image.folder}")
	String imageFolder;

	@RequestMapping(method = RequestMethod.GET, value = "")
	public String root(ModelMap model){
		return home(model);
	}
	
    @RequestMapping(method = RequestMethod.GET, value = "home")
    public String home(ModelMap model) {
        model.addAttribute("title", "Home");
        return "welcomePage";

    }

    @RequestMapping(method = RequestMethod.GET, value = "about")
    public String about(ModelMap model) {

        model.addAttribute("title", "About Us");
        return "about";

    }

    @RequestMapping(method = RequestMethod.GET, value = "contact")
    public String contact(ModelMap model) {
        ContactForm bean = new ContactForm();
        model.addAttribute("contactForm", bean);
        model.addAttribute("title", "Contact Us");
        return "contact";
    }

    @RequestMapping(method = RequestMethod.POST, value = "contact")
    public String contactPost(@Valid ContactForm contactForm, BindingResult result, ModelMap model) {
        if(result.hasErrors()){
            return "contact";
        }else{
        	String error = eh.sendMessage(contactForm);
        	if(error != null){
        		model.addAttribute("error",error);
        	}else{
    			model.addAttribute("success","Thank you for contacting us!  You will recieve a receipt of your request via email shortly.");
        	}
            return "contact";
        }
    }

    @RequestMapping(method = RequestMethod.GET, value = "services")
    public String services(ModelMap model) {

        model.addAttribute("title", "Services");
        return "services";

    }

	@RequestMapping(method = RequestMethod.GET, value = "service_area")
	public String serviceArea(ModelMap model) {

		model.addAttribute("title", "Service Area");
		return "service_area";

	}

   @RequestMapping(method = RequestMethod.GET, value = "clients")
    public String clients(ModelMap model) {
	   	
	    model.addAttribute("thumbnails",imageService.getThumbnails());
        model.addAttribute("title", "Our Clients");
        return "clients";

    }
   
   @RequestMapping(method = RequestMethod.GET, value = "payments")
   public String pay(@RequestParam(value = "action", required = false) String action, ModelMap model) {
	   
       model.addAttribute("title", "Payments: Pay Online");
       if("cancel".equals(action)){
    	   model.addAttribute("warning","You have successfully cancelled your payment.");
       }
       return "payments";

   }
   
   @RequestMapping(method = RequestMethod.POST, value = "payments")
   public String payComplete(@RequestParam(value = "payment_gross")String amount, 
	   	@RequestParam(value="payer_email")String email, ModelMap model) {
	   
	   model.addAttribute("success", "Thank you for your payment of $" + amount + ". You should receive email confirmation to '" + email +  "'.");
       model.addAttribute("title", "Payments: Pay Online");
       return "payments";

   }
   
    @RequestMapping(value = "clients/{name:.*$}", method = RequestMethod.GET)
	public String images(@PathVariable String name, HttpServletResponse response, WebRequest request) throws IOException {
		imageHandler(name, response, request);
		return null;
	}
    
    @RequestMapping(value = "clients/thumbnails/{name:.*$}", method = RequestMethod.GET)
	public String thumbnails(@PathVariable String name, HttpServletResponse response, WebRequest request) throws IOException {
		imageHandler("thumbnails" + File.separator + name, response, request);
		return null;
	}
    
    private void imageHandler(String name, HttpServletResponse response, WebRequest request) throws IOException{
		File f = new File(imageFolder + File.separator + name );
		
		if(f.exists()){
			if (request.checkNotModified(f.lastModified())) {
				response.sendError(HttpServletResponse.SC_NOT_MODIFIED);
				return;
		     }
			response.setContentType("image/jpeg");
			long now = System.currentTimeMillis();
			//res being the HttpServletResponse of the request
			response.addHeader("Cache-Control", "max-age=" + CACHE_DURATION_IN_SECOND);
			response.setDateHeader("Last-Modified", f.lastModified());
			response.setDateHeader("Expires", now + CACHE_DURATION_IN_MS);
			response.addHeader("ETag", f.getName());
			InputStream is;
			try {
				is = new FileInputStream(f);
				byte[] buf = new byte[512];
			    int bytesRead = is.read(buf);
			    ServletOutputStream out = response.getOutputStream();
			    while (bytesRead != -1) {
			        out.write(buf, 0, bytesRead);
			        bytesRead = is.read(buf);
			      }
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		}
    }
}
