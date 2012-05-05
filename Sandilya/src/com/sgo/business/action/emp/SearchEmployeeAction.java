/**
 * 
 */
package com.sgo.business.action.emp;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.sgo.dto.emp.Employee;
import com.sgo.service.emp.EmployeeService;

/**
 * @author Ganeswar Barik
 *
 */
public class SearchEmployeeAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6379676647190050912L;
	public String firstName;
	public String lastName;
	public String email;
	
	List<Employee> employeeList = new ArrayList<Employee>();
	 
	EmployeeService empService;
	//DI via Spring
	public void setEmpService(EmployeeService empService) {
		this.empService = empService;
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
 * @return the employeeList
 */
public List<Employee> getEmployeeList() {
	return employeeList;
}

/**
 * @param employeeList the employeeList to set
 */
public void setEmployeeList(List<Employee> employeeList) {
	this.employeeList = employeeList;
}

public String searchEmployee() throws Exception{
	
	String[] params = new String[3];
	if(getFirstName()!=null &&!("".equalsIgnoreCase(getFirstName().trim()))){
	params[0]= "%"+getFirstName()+"%";
	}else{
		params[0]= getFirstName();
	}
	if(getLastName()!=null &&!("".equalsIgnoreCase(getLastName().trim()))){
		params[1]= "%"+getLastName()+"%";
	}else{
		params[1]= getLastName();
	}
	if(getEmail()!=null &&!("".equalsIgnoreCase(getEmail().trim()))){
		params[2]= "%"+getEmail()+"%";
	}else{
		params[2]= getEmail();
	}
	employeeList = empService.searchEmployee(params);
	System.out.println("Size----Search----->"+employeeList.size());
	return SUCCESS;

}
}