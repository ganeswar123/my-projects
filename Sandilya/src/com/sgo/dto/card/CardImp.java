/**
 * 
 */
package com.sgo.dto.card;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Ganeswar barik
 *
 */
public class CardImp implements Serializable, Card {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2724855169750885345L;
	private Long cardID;
	private String cardNO;
	private Date issueDate;
	private boolean expired;
	/**
	 * @return the cardID
	 */
	public Long getCardID() {
		return cardID;
	}
	/**
	 * @param cardID the cardID to set
	 */
	public void setCardID(Long cardID) {
		this.cardID = cardID;
	}
	/**
	 * @return the cardNO
	 */
	public String getCardNO() {
		return cardNO;
	}
	/**
	 * @param cardNO the cardNO to set
	 */
	public void setCardNO(String cardNO) {
		this.cardNO = cardNO;
	}
	/**
	 * @return the issueDate
	 */
	public Date getIssueDate() {
		return issueDate;
	}
	/**
	 * @param issueDate the issueDate to set
	 */
	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}
	/**
	 * @return the expired
	 */
	public boolean isExpired() {
		return expired;
	}
	/**
	 * @param expired the expired to set
	 */
	public void setExpired(boolean expired) {
		this.expired = expired;
	}
	}
