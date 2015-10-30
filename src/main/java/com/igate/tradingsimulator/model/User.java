package com.igate.tradingsimulator.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.NotEmpty;

import org.hibernate.validator.constraints.Email;

public class User {
    @NotNull
    @NotEmpty   
    @Email
    private String email;
 
    @NotNull
    @NotEmpty
    @Size(min = 6, max = 15)
    private String password;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
