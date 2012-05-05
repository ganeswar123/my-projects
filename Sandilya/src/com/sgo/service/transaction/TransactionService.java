/**
 * 
 */
package com.sgo.service.transaction;

import java.util.List;

import com.sgo.dto.transaction.Transaction;

/**
 * @author Ganesh
 *
 */
public interface TransactionService {
	public void addTransaction(Transaction trans);
	public List<Transaction> listTransaction();
	List<Transaction> searchTransaction(String[] params);
	Transaction getTransaction(String transID);
	Transaction updateTransaction(Transaction trans);
	boolean deleteTransaction(String transID);
}
