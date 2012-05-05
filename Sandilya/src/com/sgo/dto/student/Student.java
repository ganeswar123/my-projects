/**
 * 
 */
package com.sgo.dto.student;

import java.util.Date;
import java.util.Set;

import com.sgo.dto.address.Address;

/**
 * @author a42763
 *
 */
public interface Student {
	/**
	 * @return the iD
	 */
	public Long getEmpID();
	/**
	 * @param iD the iD to set
	 */
	public void setEmpID(Long iD);
	/**
	 * @return the firstName
	 */
	public String getFirstName();
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName);
	/**
	 * @return the middleName
	 */
	public String getMiddleName();
	/**
	 * @param middleName the middleName to set
	 */
	public void setMiddleName(String middleName);
	/**
	 * @return the lastName
	 */
	public String getLastName();
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName);
	/**
	 * @return the hireDate
	 */
	public Date getJoinDate();
	/**
	 * @param hireDate the hireDate to set
	 */
	public void setJoinDate(Date hireDate);
	/**
	 * @return the email
	 */
	public String getEmail();
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email);
	/**
	 * @return the phone
	 */
	public String getPhone();
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone);
	/**
	 * @return the address
	 */
	public Set<Address> getAddress(); 
	/**
	 * @param address the address to set
	 */
	public void setAddress(Set<Address> address);
}
