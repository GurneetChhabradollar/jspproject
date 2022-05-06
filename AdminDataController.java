package program;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import pojo.Chemist;
import pojo.Customer;
import pojo.Logindata;
import pojo.Medicine;
import pojo.Sales;

public class AdminDataController {
	
	public int addChemist(Chemist c1,Logindata lgn)
	{
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		
		session.save(c1);
		tx.commit();
		session.close();
		
		
		session=factory.openSession();
		tx=session.beginTransaction();
		
		session.save(lgn);
		tx.commit();
		session.close();
		
		
		factory.close();
		return 1;
	}
	public int addMedicine(Medicine med)
	{
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		Transaction tx =session.beginTransaction();
		session.save(med);
		tx.commit();
		session.close();
		factory.close();
		return 1;
	}
	public int saveCustomer(Customer c1,Logindata lgn)
	{
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		
		session.save(c1);
		tx.commit();
		session.close();
		
		
		session=factory.openSession();
		tx=session.beginTransaction();
		
		session.save(lgn);
		tx.commit();
		session.close();
		
		
		factory.close();
		return 1;
	}
	public int deleteMedicine(String name)
	{
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		Medicine med=(Medicine) session.get(Medicine.class,name);
		session.delete(med);
		tx.commit();
		session.close();
		factory.close();
		return 1;
	}
	public int editMedicine(String name,Medicine med)
	{
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		Medicine med1=(Medicine) session.get(Medicine.class,name);
		med1.setPrice(med.getPrice());
		session.update(med1);
		tx.commit();
		session.close();
		factory.close();
		return 1;
	}
	public List<Medicine> fetchAll()
	{
		List<Medicine> lst=new ArrayList<Medicine>();
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		lst=session.createCriteria(Medicine.class).list();
		session.close();
		factory.close();
		return lst;
	}
	public Medicine fetchMedicine(String name)
	{
		Medicine med=new Medicine();
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		med=(Medicine) session.get(Medicine.class,name);
		session.close();
		factory.close();
	    return med;
	}
	public Logindata fetchOne(String userid)
	{
		Logindata lgn=new Logindata();
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		lgn=(Logindata) session.get(Logindata.class,userid);
		session.close();
		factory.close();
		return lgn;
	}
	public Customer fetchCustomer(String email)
	{
		Customer c1=new Customer();
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		c1=(Customer) session.get(Customer.class,email);
		session.close();
		factory.close();
		return c1;
	}
	public int sellMedicine(Sales sale)
	{
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		session.save(sale);
		tx.commit();
		session.close();
		factory.close();
		
		return 1;
	}
	public Chemist fetchChemist()
	{
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		Chemist c1=(Chemist) session.get(Chemist.class,"aa@gmail.com");
		session.close();
		factory.close();
		return c1;
	}
	public List<Sales> checkSales()
	{
		List<Sales> lst=new ArrayList<Sales>();
		Configuration cfg=new Configuration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory factory=cfg.buildSessionFactory();
		Session session=factory.openSession();
		lst=session.createCriteria(Sales.class).list();
		session.close();
		factory.close();
		return lst;
	}
}
