package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Supplier;


@Repository("supplierDao")
@Transactional
public class SupplierDaoImpl implements SupplierDao{

	@Autowired
	SessionFactory sessionFactory;

	public boolean addSupplier(Supplier supplier) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception arised"+e);
		return false;
		}
	}
	@Transactional
	public List<Supplier> retrieveSupplier() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Supplier");
		List<Supplier> listSupplier=query.list();
		session.close();
		return listSupplier;
	}
	@Transactional
	public boolean deleteSupplier(Supplier supplier) {
		try
		{
		sessionFactory.getCurrentSession().delete(supplier);
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception arised"+e);
		return false;
		}
	}
	@Transactional
	public Supplier getSupplier(int catId) {
		Session session=sessionFactory.openSession();
		Supplier supplier=(Supplier)session.get(Supplier.class,catId);
		session.close();
		return supplier;
	}
@Transactional
	public boolean updateSupplier(Supplier supplier) {
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		return true;
		}
		catch(Exception e)
		{
			System.out.println("Exception arised"+e);
		return false;
		}
	}

}