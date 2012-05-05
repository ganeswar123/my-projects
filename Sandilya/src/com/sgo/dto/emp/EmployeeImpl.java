/**
 * 
 */
package com.sgo.dto.emp;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import com.sgo.dto.address.Address;
import com.sgo.dto.organisation.Organisation;

/**
 * @author a42763
 *
 */
public class EmployeeImpl implements Employee,Serializable{
	private static final long serialVersionUID = -503081560590600907L;
	
//	public Long empID;
	public String empID;
	public String firstName;
	public String middleName;
	public String lastName;
	public Date hireDate;
	public Date fireDate;
	public String email;
	public String phone;
	public Date dob;
	public String gender;
	public Set<Address>  address;
	public Organisation organisation;
	/**
	 * @return the empID
	 */
	public String getEmpID() {
		return empID;
	}
	/**
	 * @param empID the empID to set
	 */
	public void setEmpID(String empID) {
		this.empID = empID;
	}
	/**
	 * @return the iD
	 *//*
	public Long getEmpID() {
		return empID;
	}
	*//**
	 * @param iD the iD to set
	 *//*
	public void setEmpID(Long iD) {
		empID = iD;
	}*/
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
	public Date getHireDate() {
		return hireDate;
	}
	/**
	 * @param hireDate the hireDate to set
	 */
	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
		System.out.println("hireDate...>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+hireDate);
	}
	/**
	 * @return the fireDate
	 */
	public Date getFireDate() {
		return fireDate;
	}
	/**
	 * @param fireDate the fireDate to set
	 */
	public void setFireDate(Date fireDate) {
		this.fireDate = fireDate;
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
	 * @return the dob
	 */
	public Date getDob() {
		return dob;
	}
	/**
	 * @param dob the dob to set
	 */
	public void setDob(Date dob) {
		this.dob = dob;
	}
	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}
	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
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
	/**
	 * @return the organisation
	 */
	public Organisation getOrganisation() {
		return organisation;
	}
	/**
	 * @param organisation the organisation to set
	 */
	public void setOrganisation(Organisation organisation) {
		this.organisation = organisation;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((empID == null) ? 0 : empID.hashCode());
		return result;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		EmployeeImpl other = (EmployeeImpl) obj;
		if (empID == null) {
			if (other.empID != null)
				return false;
		} else if (!empID.equals(other.empID))
			return false;
		return true;
	}
	
	
}
