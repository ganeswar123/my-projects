/**
 * 
 */
package com.sgo.service.emp;

import java.util.List;

import com.sgo.dao.emp.EmpolyeeDAO;
import com.sgo.dto.emp.Employee;

/**
 * @author a42763
 *
 */
public class EmployeeServiceImpl implements EmployeeService {
	EmpolyeeDAO employeeDAO;
	
	public void setEmployeeDAO(EmpolyeeDAO employeeDAO){
		this.employeeDAO = employeeDAO;
	}
	
	@Override
	public void addEmployee(Employee emp) {
		employeeDAO.addEmployee(emp);
		
	}

	@Override
	public List<Employee> listEmployee() {
		return employeeDAO.listEmployee();
	}
	@Override
	public List<Employee> searchEmployee(String[] params) {
		return employeeDAO.searchEmployee(params);
	}

	@Override
	public Employee getEmployee(String empID) {
		return employeeDAO.getEmployee(empID);
	}

	@Override
	public Employee updateEmployee(Employee emp) {
		// TODO Auto-generated method stub
		return employeeDAO.updateEmployee(emp);
	}

	@Override
	public boolean deleteEmployee(String empID) {
		// TODO Auto-generated method stub
		return employeeDAO.deleteEmployee(empID);
	}

}
