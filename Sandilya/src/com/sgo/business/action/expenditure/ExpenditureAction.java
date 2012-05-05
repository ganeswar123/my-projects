/**
 * 
 */
package com.sgo.business.action.expenditure;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sgo.dto.transaction.Transaction;
import com.sgo.service.transaction.TransactionService;

/**
 * @author Ganeswar Barik
 *
 */
public class ExpenditureAction  extends ActionSupport implements
ModelDriven<Transaction> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -730040403803890046L;

	
	Transaction trans;
	/**
	 * 
	 */
	TransactionService transService;
	
	List<Transaction> tarnsList =  new ArrayList<Transaction>();
	
	/**
	 * @return the tarnsList
	 */
	public List<Transaction> getTarnsList() {
		return tarnsList;
	}

	/**
	 * @param tarnsList the tarnsList to set
	 */
	public void setTarnsList(List<Transaction> tarnsList) {
		this.tarnsList = tarnsList;
	}

	@Override
	public Transaction getModel() {
		// TODO Auto-generated method stub
		return trans;
	}

	/**
	 * @return the trans
	 */
	public Transaction getTrans() {
		return trans;
	}

	/**
	 * @param trans the trans to set
	 */
	public void setTrans(Transaction trans) {
		this.trans = trans;
	}

	/**
	 * @return the transService
	 */
	public TransactionService getTransService() {
		return transService;
	}

	/**
	 * @param transService the transService to set
	 */
	public void setTransService(TransactionService transService) {
		this.transService = transService;
	}
	
	public String addExpenditure(){
		try {
			System.out.println(BeanUtils.describe(trans));
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		transService.addTransaction(trans);
		System.out.println("hello");
		return SUCCESS;
	}
	
	// list all employee
		public String listExpenditure() throws Exception {

			tarnsList = transService.listTransaction();
			System.out.print("Size"+tarnsList.size());
			return SUCCESS;

		}

		// get transaction Detail
		public String getExpenditure() throws Exception {
System.out.print("trans.getTransactionID()"+trans.getTransactionID());
			trans = transService.getTransaction(trans.getTransactionID());

			return SUCCESS;

		}

		// update Employee
		public String updateExpenditure() throws Exception {

			trans = transService.updateTransaction(trans);

			return SUCCESS;

		}

		// delete Employee
		public String deleteExpenditure() throws Exception {
			boolean deleted = false;

			deleted = transService.deleteTransaction(trans.getTransactionID()+"");
			System.out.println("Successfully Deleted ------>" + deleted);

			return SUCCESS;

		}

}
