/**
 * 
 */
package com.sgo.dto.user;

/**
 * @author a42763
 *
 */
public interface User {

	/**
	 * @return the userID
	 */
	public String getUserID() ;
	/**
	 * @param userID the userID to set
	 */
	public void setUserID(String userID);
	/**
	 * @return the userName
	 */
	public String getUserName();
	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName);
	/**
	 * @return the password
	 */
	public String getPassword();
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password);


}
