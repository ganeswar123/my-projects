/**
 * 
 */
package com.sgo.business.action.emp;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sgo.dto.emp.Employee;
import com.sgo.service.emp.EmployeeService;

/**
 * @author Ganeswar Barik
 * 
 */
public class EmployeeAction extends ActionSupport implements
		ModelDriven<Employee> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -857520959866519264L;
	Employee emp;
	List<Employee> employeeList = new ArrayList<Employee>();

	EmployeeService empService;
	private Date dob;

	// DI via Spring
	public void setEmp(Employee emp) {
		this.emp = emp;
	}

	public Employee getEmp() {
		return emp;
	}

	public void setEmpService(EmployeeService empService) {
		this.empService = empService;
	}

	public Employee getModel() {
		return emp;
	}

	public List<Employee> getEmployeeList() {
		return employeeList;
	}

	public void setEmployeeList(List<Employee> employeeList) {
		this.employeeList = employeeList;
	}

	// save employee
	public String addEmployee() throws Exception {

		// save it
		empService.addEmployee(emp);

		System.out.println("Address check--->"+emp.getAddress().size());
		// reload the customer list
		employeeList = new ArrayList<Employee>();
		employeeList = empService.listEmployee();

		return SUCCESS;

	}

	// list all employee
	public String listEmployee() throws Exception {

		employeeList = empService.listEmployee();
		System.out.println("Size------>" + employeeList.size());

		return SUCCESS;

	}

	// get Employee Detail
	public String getEmployee() throws Exception {

		emp = empService.getEmployee(emp.getEmpID());
		System.out.println("Emp ID-- selected---> " + emp.getEmpID());
		// emp = empService.getEmployee("17");
		// System.out.println("Organisation Name ------>"+(emp.getOrganisation()).getOrganisationName());

		return SUCCESS;

	}

	// update Employee
	public String updateEmployee() throws Exception {

		System.out.println("Name--LastName---Phone---Email---DOb--"
				+ emp.getFirstName() + emp.getLastName() + emp.getPhone()
				+ emp.getDob());
		System.out
				.println("OrganisationID--OrganisationName---OrangaisationType---->>"
						+ emp.getOrganisation().getID()
						+ emp.getOrganisation().getOrganisationName()
						+ emp.getOrganisation().getOrganisationType());

		emp = empService.updateEmployee(emp);
		System.out.println("Organisation Name ------>" + (emp.getEmail()));

		return SUCCESS;

	}

	// delete Employee
	public String deleteEmployee() throws Exception {
		boolean deleted = false;
		System.out.println("Employee ID going to Deleted--" + emp.getEmpID());

		deleted = empService.deleteEmployee(emp.getEmpID());
		System.out.println("Successfully Deleted ------>" + deleted);

		return SUCCESS;

	}
}
