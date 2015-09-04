package com.castrati.capcitypetcare.beans;

import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

public class EmailHandler {
	
	@Autowired
	private MailSender mailSender;
	@Autowired
    private SimpleMailMessage message;
	private Logger logger;

    public void setMailSender(MailSender mailSender) {
        this.mailSender = mailSender;
    }

    public void setMessage(SimpleMailMessage message) {
        this.message = message;
    }

    public String sendMessage(ContactForm contact) {
        String error;
        error = sendRequest(contact);
        if(error == null)
        	error = sendReceipt(contact);
        return error;
    }
    
    /**
     * Given the contact form, this will send a receipt to the customer.
     * 
     * @param contact - the ContactForm object
     * @return error string or null if successful
     */
    private String sendReceipt(ContactForm contact){
    	SimpleMailMessage msg = new SimpleMailMessage(this.message);
        msg.setTo(contact.getEmail());
        msg.setText("Dear " + contact.getName() + ",\n\n" +
                "Thank you for your inquiry. Your request is very important to us and we will reply to you as soon as possible.\n\n" +
        		"Sincerely,\n\n" +
        		"Capital City Pet Care");
        try{
            mailSender.send(msg);
        }
        catch(MailException ex) {
            return "Error sending receipt to: " + contact.getEmail();
        }
        return null;
    }
    
    private String sendRequest(ContactForm contact){
    	SimpleMailMessage msg = new SimpleMailMessage(this.message);
    	msg.setFrom(message.getFrom());
        msg.setReplyTo(contact.getEmail());
        msg.setText(contact.getName() +" sent you a message:\n" +
        		"----------------------------------------------\n" +
        		contact.getMessage() + "\n" +
        		"----------------------------------------------\n" +
        		"Pets: " + contact.getPets() + "\n\n" +
        		contact.getAddress() + "\n" +
        		contact.getPhone() + "\n\n" +
        		"Heard about you through: " + contact.getHeardfrom());
        try{
            mailSender.send(msg);
        }
        catch(MailException ex) {
        	if(ex.getMessage().contains("Sender Rejected"))
        		return "Error sending email.  Please verify <strong>" + contact.getEmail() + "</strong> is your valid email address.";
        	else
        		return "There was an error in submitting your request.  Please try again later.";            
        }
        return null;
    }
}
