package pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import net.bytebuddy.implementation.bytecode.assign.reference.GenericTypeAwareAssigner;

@Entity
public class Sales {

	@Id
	@GeneratedValue
	private int transaction_id;
	private String customer_id;
	private String customer_name;
	private int medid;
	private String name;
	private String manufacturer;
	private int price;
	private int quantity;
	private int sellingprice;
	
	public Sales() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Sales(int transaction_id, String customer_id, String customer_name, int medid, String name,
			String manufacturer, int price, int quantity, int sellingprice) {
		super();
		this.transaction_id = transaction_id;
		this.customer_id = customer_id;
		this.customer_name = customer_name;
		this.medid = medid;
		this.name = name;
		this.manufacturer = manufacturer;
		this.price = price;
		this.quantity = quantity;
		this.sellingprice = sellingprice;
	}

	public int getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(int transaction_id) {
		this.transaction_id = transaction_id;
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

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getSellingprice() {
		return sellingprice;
	}

	public void setSellingprice(int sellingprice) {
		this.sellingprice = sellingprice;
	}
	
	
	
}
