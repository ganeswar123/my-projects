/**
 * 
 */
package com.sgo.service.transaction;

import java.util.List;

import com.sgo.dao.transaction.TransactionDAO;
import com.sgo.dto.transaction.Transaction;

/**
 * @author Ganesh
 *
 */
public class TransactionServiceImpl implements TransactionService {
	TransactionDAO  transactionDAO;
	
	/**
	 * @param transactionDAO the transactionDAO to set
	 */
	public void setTransactionDAO(TransactionDAO transactionDAO) {
		this.transactionDAO = transactionDAO;
	}

	@Override
	public void addTransaction(Transaction trans) {
		transactionDAO.addTransaction(trans);
	}

	@Override
	public List<Transaction> listTransaction() {
		return transactionDAO.listTransaction();
	}

	@Override
	public List<Transaction> searchTransaction(String[] params) {
		return transactionDAO.searchTransaction(params);
	}

	@Override
	public Transaction getTransaction(String transID) {
		return transactionDAO.getTransaction(transID);
	}

	@Override
	public Transaction updateTransaction(Transaction trans) {
		return transactionDAO.updateTransaction(trans);
	}

	@Override
	public boolean deleteTransaction(String transID) {
		return transactionDAO.deleteTransaction(transID);
	}

}
