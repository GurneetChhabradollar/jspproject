package pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customer {

	@Id
	@Column(name="customer_id",nullable=false,length=100)
	private String customer_id;
	private String customer_name;
	private String address;
	private int contact;
	private String password;
	
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Customer(String customer_id, String customer_name, String address, int contact, String password) {
		super();
		this.customer_id = customer_id;
		this.customer_name = customer_name;
		this.address = address;
		this.contact = contact;
		this.password = password;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getContact() {
		return contact;
	}

	public void setContact(int contact) {
		this.contact = contact;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
