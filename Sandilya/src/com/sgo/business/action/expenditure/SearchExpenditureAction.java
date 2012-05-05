/**
 * 
 */
package com.sgo.business.action.expenditure;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.sgo.dto.transaction.Transaction;
import com.sgo.service.transaction.TransactionService;

/**
 * @author Ganeswar Barik
 *
 */
public class SearchExpenditureAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1332607512816183573L;
	/**
	 * 
	 */
	public String cashier;
	public String todate;
	public String fromdate;
	public String toaccount;
	public String fromaccount;
	/**
	 * 
	 */
	public String receiptNo;
	
	/**
	 * @return the cashier
	 */
	public String getCashier() {
		return cashier;
	}


	/**
	 * @param cashier the cashier to set
	 */
	public void setCashier(String cashier) {
		this.cashier = cashier;
	}


	/**
	 * @return the todate
	 */
	public String getTodate() {
		return todate;
	}


	/**
	 * @param todate the todate to set
	 */
	public void setTodate(String todate) {
		this.todate = todate;
	}


	/**
	 * @return the fromdate
	 */
	public String getFromdate() {
		return fromdate;
	}


	/**
	 * @param fromdate the fromdate to set
	 */
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}


	/**
	 * @return the toaccount
	 */
	public String getToaccount() {
		return toaccount;
	}


	/**
	 * @param toaccount the toaccount to set
	 */
	public void setToaccount(String toaccount) {
		this.toaccount = toaccount;
	}


	/**
	 * @return the fromaccount
	 */
	public String getFromaccount() {
		return fromaccount;
	}


	/**
	 * @param fromaccount the fromaccount to set
	 */
	public void setFromaccount(String fromaccount) {
		this.fromaccount = fromaccount;
	}


	/**
	 * @return the receiptNo
	 */
	public String getReceiptNo() {
		return receiptNo;
	}


	/**
	 * @param receiptNo the receiptNo to set
	 */
	public void setReceiptNo(String receiptNo) {
		this.receiptNo = receiptNo;
	}

	List<Transaction> transList = new ArrayList<Transaction>();
	 
	TransactionService transService;
	//DI via Spring
	public void setTransService(TransactionService transService) {
		this.transService = transService;
	}


/**
 * @return the employeeList
 */
public List<Transaction> getTransList() {
	return transList;
}

/**
 * @param employeeList the employeeList to set
 */
public void setTransList(List<Transaction> transList) {
	this.transList = transList;
}

public String searchExpenditure() throws Exception{
	
	String[] params = new String[3];
	if(getCashier()!=null &&!("".equalsIgnoreCase(getCashier().trim()))){
	params[0]= "%"+getCashier()+"%";
	}else{
		params[0]= getCashier();
	}	
	if(getToaccount()!=null &&!("".equalsIgnoreCase(getToaccount().trim()))){
		params[1]= "%"+getToaccount()+"%";
	}else{
		params[1]= getToaccount();
	}
	if(getFromaccount()!=null &&!("".equalsIgnoreCase(getFromaccount().trim()))){
		params[2]= "%"+getFromaccount()+"%";
	}else{
		params[2]= getFromaccount();
	}
	if(getTodate()!=null &&!("".equalsIgnoreCase(getTodate().trim()))){
		params[2]= "%"+getTodate()+"%";
	}else{
		params[2]= getTodate();
	}
	if(getFromdate()!=null &&!("".equalsIgnoreCase(getFromdate().trim()))){
		params[2]= "%"+getFromdate()+"%";
	}else{
		params[2]= getFromdate();
	}
	if(getReceiptNo()!=null &&!("".equalsIgnoreCase(getReceiptNo().trim()))){
		params[2]= "%"+getReceiptNo()+"%";
	}else{
		params[2]= getReceiptNo();
	}
	transList = transService.searchTransaction(params);
	System.out.println("Size----Search----->"+transList.size());
	return SUCCESS;

}
}