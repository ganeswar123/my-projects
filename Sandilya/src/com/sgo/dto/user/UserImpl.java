/**
 * 
 */
package com.sgo.dto.user;

import java.io.Serializable;

/**
 * @author a42763
 *
 */
public class UserImpl implements User,Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3629887083770957639L;

	private String userID;
	private String userName;
	private String password;
	/**
	 * @return the userID
	 */
	public String getUserID() {
		return userID;
	}
	/**
	 * @param userID the userID to set
	 */
	public void setUserID(String userID) {
		this.userID = userID;
	}
	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}


}
