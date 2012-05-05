/**
 * 
 */
package com.sgo.dto.transaction;

import java.util.Date;

/**
 * @author Ganesh
 *
 */
public interface Transaction {
	/**
	 * @return the transactionID
	 */
	public String getTransactionID() ;
	/**
	 * @param transactionID the transactionID to set
	 */
	public void setTransactionID(String transactionID) ;
	/**
	 * @return the transactionDate
	 */
	public Date getTransactionDate();
	/**
	 * @param transactionDate the transactionDate to set
	 */
	public void setTransactionDate(Date transactionDate);
	/**
	 * @return the toAccount
	 */
	public String getToAccount();
	/**
	 * @param toAccount the toAccount to set
	 */
	public void setToAccount(String toAccount);
	/**
	 * @return the fromAccount
	 */
	public String getFromAccount();
	/**
	 * @param fromAccount the fromAccount to set
	 */
	public void setFromAccount(String fromAccount) ;
	/**
	 * @return the transactionNote
	 */
	public String getTransactionNote();
	/**
	 * @param transactionNote the transactionNote to set
	 */
	public void setTransactionNote(String transactionNote);
	/**
	 * @return the receitNo
	 */
	public String getReceiptNo();
	/**
	 * @param receitNo the receitNo to set
	 */
	public void setReceiptNo(String receitNo) ;
	/**
	 * @return the transctionType
	 */
	public String getTransactionType();
	/**
	 * @param transctionType the transctionType to set
	 */
	public void setTransactionType(String transctionType);
	
	public String getCashier();
	public void setCashier(String cashier);

}
