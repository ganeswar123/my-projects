/**
 * 
 */
package com.sgo.dto.card;

import java.util.Date;

/**
 * @author Ganeswar Barik
 *
 */
public interface Card {
	/**
	 * @return the cardID
	 */
	public Long getCardID();
	/**
	 * @param cardID the cardID to set
	 */
	public void setCardID(Long cardID);
	/**
	 * @return the cardNO
	 */
	public String getCardNO();
	/**
	 * @param cardNO the cardNO to set
	 */
	public void setCardNO(String cardNO);
	/**
	 * @return the issueDate
	 */
	public Date getIssueDate() ;
	/**
	 * @param issueDate the issueDate to set
	 */
	public void setIssueDate(Date issueDate) ;
	/**
	 * @return the expired
	 */
	public boolean isExpired() ;
	/**
	 * @param expired the expired to set
	 */
	public void setExpired(boolean expired);
}
