/**
 * 
 */
package com.sgo.dto.emp;

import java.util.Date;
import java.util.Set;

import com.sgo.dto.address.Address;
import com.sgo.dto.organisation.Organisation;

/**
 * @author a42763
 *
 */
public interface Employee {
	
	public String getEmpID();
	/**
	 * @param empID the empID to set
	 */
	public void setEmpID(String empID);
	
	
	/**
	 * @return the iD
	 */
//	public Long getEmpID();
	/**
	 * @param iD the iD to set
	 */
//	public void setEmpID(Long iD);
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
	public Date getHireDate();
	/**
	 * @param hireDate the hireDate to set
	 */
	public void setHireDate(Date hireDate);
	/**
	 * @return the fireDate
	 */
	public Date getFireDate();
	/**
	 * @param fireDate the fireDate to set
	 */
	public void setFireDate(Date fireDate);
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
	 * @param dob the dob to set
	 */
	public Date getDob();
	/**
	 * @param dob the dob to set
	 */
	public void setDob(Date dob);
	/**
	 * @return the gender
	 */
	public String getGender();
	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender);
	/**
	 * @return the address
	 */
	
	public Set<Address> getAddress(); 
	/**
	 * @param address the address to set
	 */
	public void setAddress(Set<Address> address);
	public Organisation getOrganisation() ;
	/**
	 * @param organisation the organisation to set
	 */
	public void setOrganisation(Organisation organisation);
}
