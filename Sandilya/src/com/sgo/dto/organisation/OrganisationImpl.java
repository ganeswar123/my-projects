/**
 * 
 */
package com.sgo.dto.organisation;

import java.io.Serializable;
import java.util.Set;

import com.sgo.dto.emp.Employee;

/**
 * @author Ganeswar Barik
 *
 */
public class OrganisationImpl implements Serializable, Organisation {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4425944131785646116L;
	private String ID;
	private String organisationName;
	private String organisationType;
	private Set<Employee> employee;
	/**
	 * @return the iD
	 */
	public String getID() {
		return ID;
	}
	/**
	 * @param iD the iD to set
	 */
	public void setID(String iD) {
		ID = iD;
	}
	/**
	 * @return the organisationName
	 */
	public String getOrganisationName() {
		return organisationName;
	}
	/**
	 * @param organisationName the organisationName to set
	 */
	public void setOrganisationName(String organisationName) {
		this.organisationName = organisationName;
	}
	/**
	 * @return the organisationType
	 */
	public String getOrganisationType() {
		return organisationType;
	}
	/**
	 * @param organisationType the organisationType to set
	 */
	public void setOrganisationType(String organisationType) {
		this.organisationType = organisationType;
	}
	/**
	 * @return the employee
	 */
	public Set<Employee> getEmployee() {
		return employee;
	}
	/**
	 * @param employee the employee to set
	 */
	public void setEmployee(Set<Employee> employee) {
		this.employee = employee;
	}

	
}
