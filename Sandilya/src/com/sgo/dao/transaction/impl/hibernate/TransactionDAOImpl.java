/**
 * 
 */
package com.sgo.dao.transaction.impl.hibernate;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sgo.dao.transaction.TransactionDAO;
import com.sgo.dto.emp.EmployeeImpl;
import com.sgo.dto.transaction.Transaction;
import com.sgo.dto.transaction.TransactionImpl;

/**
 * @author Ganesh
 *
 */
public class TransactionDAOImpl extends HibernateDaoSupport implements TransactionDAO {
	@Override
	public void addTransaction(Transaction trans) {
		getHibernateTemplate().save(trans);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Transaction> listTransaction() {
		return getHibernateTemplate().find("from TransactionImpl");
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Transaction> searchTransaction(String[]params) {
		return getHibernateTemplate().find("from TransactionImpl where firstName like ? or lastName like ?  or email like ?  ",params);
	}

	@Override
	public Transaction getTransaction(String transID) {
		return (Transaction) getHibernateTemplate().get(TransactionImpl.class, transID);
	}

	@Override
	public Transaction updateTransaction(Transaction emp) {
		System.out.println("helloooooooooooo1");
		Transaction emptoSave = (Transaction)getHibernateTemplate().get(TransactionImpl.class, emp.getTransactionID());
			System.out.println("helloooooooooooo3");
		getHibernateTemplate().saveOrUpdate(emp);
	// return the saved employee data
		return  emp;
	}

	@Override
	public boolean deleteTransaction(String empID) {
		// find proper way to delete Object.
		boolean deleted = true;
		try {
			getHibernateTemplate().delete(getHibernateTemplate().get(EmployeeImpl.class, empID));
		} catch (DataAccessException e) {
			deleted = false;
			e.printStackTrace();
		}
		return deleted;
	}
}
