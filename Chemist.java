package pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Chemist {
	
	@Id
	@Column(name="email",nullable=false,length=100)
	private String email;
	private String name;
	private int contact;
	private String address; 
	private String password;
	
	public Chemist() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Chemist(String email, String name, int contact, String address, String password) {
		super();
		this.email = email;
		this.name = name;
		this.contact = contact;
		this.address = address;
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getContact() {
		return contact;
	}

	public void setContact(int contact) {
		this.contact = contact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
