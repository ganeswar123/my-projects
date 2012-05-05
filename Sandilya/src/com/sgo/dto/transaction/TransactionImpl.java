/**
 * 
 */
package com.sgo.dto.transaction;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Ganesh
 *
 */
public class TransactionImpl implements Transaction,Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2510242858443199678L;
	
	private String transactionID;
	private Date transactionDate;
	private String toAccount;
	private String fromAccount;
	private String transactionNote;
	private String receiptNo;
	private String transactionType;
	private String cashier;
	/**
	 * @return the transactionID
	 */
	public String getTransactionID() {
		return transactionID;
	}
	/**
	 * @param transactionID the transactionID to set
	 */
	public void setTransactionID(String transactionID) {
		this.transactionID = transactionID;
	}
	/**
	 * @return the transactionDate
	 */
	public Date getTransactionDate() {
		return transactionDate;
	}
	/**
	 * @param transactionDate the transactionDate to set
	 */
	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}
	/**
	 * @return the toAccount
	 */
	public String getToAccount() {
		return toAccount;
	}
	/**
	 * @param toAccount the toAccount to set
	 */
	public void setToAccount(String toAccount) {
		this.toAccount = toAccount;
	}
	/**
	 * @return the fromAccount
	 */
	public String getFromAccount() {
		return fromAccount;
	}
	/**
	 * @param fromAccount the fromAccount to set
	 */
	public void setFromAccount(String fromAccount) {
		this.fromAccount = fromAccount;
	}
	/**
	 * @return the transactionNote
	 */
	public String getTransactionNote() {
		return transactionNote;
	}
	/**
	 * @param transactionNote the transactionNote to set
	 */
	public void setTransactionNote(String transactionNote) {
		this.transactionNote = transactionNote;
	}
	/**
	 * @return the receitNo
	 */
	public String getReceiptNo() {
		return receiptNo;
	}
	/**
	 * @param receitNo the receitNo to set
	 */
	public void setReceiptNo(String receiptNo) {
		this.receiptNo = receiptNo;
	}
	/**
	 * @return the transctionType
	 */
	public String getTransactionType() {
		return transactionType;
	}
	/**
	 * @param transctionType the transctionType to set
	 */
	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}
	public String getCashier() {
		return cashier;
	}
	public void setCashier(String cashier) {
		this.cashier = cashier;
	}

}
