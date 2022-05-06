package pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Medicine {
	
	
	@Id
	@Column(name="name",nullable=false,length=100)
	private String name;
	private int medid;
	private String manufacturer;
	private int price;
	
	public Medicine() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Medicine(int medid, String name, String manufacturer, int price) {
		super();
		this.medid = medid;
		this.name = name;
		this.manufacturer = manufacturer;
		this.price = price;
	}

	public int getMedid() {
		return medid;
	}

	public void setMedid(int medid) {
		this.medid = medid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
}
