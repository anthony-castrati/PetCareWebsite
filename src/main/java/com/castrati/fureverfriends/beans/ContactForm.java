package com.castrati.fureverfriends.beans;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class ContactForm {

		
    @NotBlank(message="name required")
//    @Length(min=1, max=50, message="Name too long")
    private String name;
    
    @NotBlank(message="email required")
    @Email(message="invalid address")
    private String email;

    @NotBlank(message="street address required")
    private String street;
    
    @NotBlank(message="city required")
    private String city;
    
    @NotBlank(message="state required")
    private String state;
    
    @NotBlank(message="zip required")
//    @Digits(message="invalid zip" fraction=0,integer=5)
    private String zip;
    
    @NotBlank(message="reason required")
    private String reason;
    
    @NotBlank(message="message required")
    private String message;
    
    
		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getStreet() {
			return street;
		}

		public void setStreet(String street) {
			this.street = street;
		}

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		public String getState() {
			return state;
		}

		public void setState(String state) {
			this.state = state;
		}

		public String getZip() {
			return zip;
		}

		public void setZip(String zip) {
			this.zip = zip;
		}

		public String getReason() {
			return reason;
		}

		public void setReason(String reason) {
			this.reason = reason;
		}

		public String getMessage() {
			return message;
		}

		public void setMessage(String message) {
			this.message = message;
		}

}