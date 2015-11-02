package com.igate.tradingsimulator.model;

import com.igate.tradingsimulator.validation.FieldMatch;


@FieldMatch(first = "password", second = "confirmPassword", message = "The password fields must match")
public class UserDetails extends User {

	private String firstName;
	private String lastName;
	private String confirmPassword;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
}
