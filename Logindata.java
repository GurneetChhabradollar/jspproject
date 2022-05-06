package pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Logindata {

	@Id
	@Column(name="userid",nullable=false,length=100)
	private String userid;
	private String password;
	private String usertype;
	
	public Logindata() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Logindata(String userid, String password, String usertype) {
		super();
		this.userid = userid;
		this.password = password;
		this.usertype = usertype;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	
	
	
}
