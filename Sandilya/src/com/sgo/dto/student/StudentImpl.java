/**
 * 
 */
package com.sgo.dto.student;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import com.sgo.dto.address.Address;

/**
 * @author a42763
 *
 */
public class StudentImpl implements Student,Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5237653026784956699L;
	public Long empID;
	public String firstName;
	public String middleName;
	public String lastName;
	public Date joinDate;
	public String email;
	public String phone;
	public Set<Address>  address;
	/**
	 * @return the iD
	 */
	public Long getEmpID() {
		return empID;
	}
	/**
	 * @param iD the iD to set
	 */
	public void setEmpID(Long iD) {
		empID = iD;
	}
	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return the middleName
	 */
	public String getMiddleName() {
		return middleName;
	}
	/**
	 * @param middleName the middleName to set
	 */
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return the hireDate
	 */
	public Date getJoinDate() {
		return joinDate;
	}
	/**
	 * @param hireDate the hireDate to set
	 */
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * @return the address
	 */
	public Set<Address> getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(Set<Address> address) {
		this.address = address;
	}
}
