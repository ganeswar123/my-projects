/**
 * 
 */
package com.sgo.dao.emp;

import java.util.List;

import com.sgo.dto.emp.Employee;

/**
 * @author a42763
 *
 */
public interface EmpolyeeDAO {

	public void addEmployee(Employee emp);
	public List<Employee> listEmployee();
	List<Employee> searchEmployee(String[] params);
	Employee getEmployee(String empID);
	Employee updateEmployee(Employee emp);
	boolean deleteEmployee(String empID);
}
