package com.castrati.capcitypetcare.beans;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class ContactForm {

		
    @NotBlank(message="name required")
    private String name;
    
    @NotBlank(message="email required")
    @Email(message="invalid address")
    private String email;

    @NotBlank(message="Full address required")
    private String address;
    
    @NotBlank(message="message required")
    private String message;

    @NotBlank(message="pet information required")
    private String pets;

	private String phone;
    private String heardfrom;
    
		public String getHeardfrom() {
		return heardfrom;
	}

	public void setHeardfrom(String heardfrom) {
		this.heardfrom = heardfrom;
	}

		public String getPets() {
		return pets;
	}

	public void setPets(String pets) {
		this.pets = pets;
	}

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

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getPhone() {
			return phone;
		}

		public void setPhone(String phone) {
			this.phone = phone;
		}

		public String getMessage() {
			return message;
		}

		public void setMessage(String message) {
			this.message = message;
		}

}