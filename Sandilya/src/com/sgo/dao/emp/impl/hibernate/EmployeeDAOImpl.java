/**
 * 
 */
package com.sgo.dao.emp.impl.hibernate;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sgo.dao.emp.EmpolyeeDAO;
import com.sgo.dto.emp.Employee;
import com.sgo.dto.emp.EmployeeImpl;
import com.sgo.dto.organisation.Organisation;

/**
 * @author a42763
 *
 */
public class EmployeeDAOImpl extends HibernateDaoSupport implements EmpolyeeDAO {

	@Override
	public void addEmployee(Employee emp) {
		List<Organisation> oList = getHibernateTemplate().find("from OrganisationImpl where organisationName =?",emp.getOrganisation().getOrganisationName());
		emp.setOrganisation(oList.get(0));
		getHibernateTemplate().save(emp);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> listEmployee() {
		return getHibernateTemplate().find("from EmployeeImpl");
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> searchEmployee(String[]params) {
		return getHibernateTemplate().find("from EmployeeImpl where firstName like ? or lastName like ?  or email like ?  ",params);
	}

	@Override
	public Employee getEmployee(String empID) {
		return (Employee) getHibernateTemplate().get(EmployeeImpl.class, empID);
	}

	@Override
	public Employee updateEmployee(Employee emp) {
		System.out.println("helloooooooooooo1");
		Employee emptoSave = (Employee)getHibernateTemplate().get(EmployeeImpl.class, emp.getEmpID());
		emp.setAddress(emptoSave.getAddress());
		String orgNameDB = "";
		String orgName = "";
		if(emp.getOrganisation()!= null){
			orgNameDB = emp.getOrganisation().getOrganisationName();
		}
		if(emptoSave.getOrganisation()!= null){
			orgName = emptoSave.getOrganisation().getOrganisationName();
		}
		if(!orgName.equalsIgnoreCase(orgNameDB)){
			System.out.println("helloooooooooo6oo2");
			List<Organisation> oList = new ArrayList<Organisation>();
			String[] params = new String[1];
			params[0] = emp.getOrganisation().getOrganisationName();
			try {
				oList = getHibernateTemplate().find("from OrganisationImpl where organisationName =?",params);
			} catch (HibernateException he) {
				he.printStackTrace();
			}
			System.out.println("hellooooooooooo7o2"+oList.size());
			
			emp.setOrganisation(oList.get(0));
		}else{
			System.out.println("helloooooooooooo82");
			emp.setOrganisation(emptoSave.getOrganisation());
		}
		System.out.println("helloooooooooooo3");
		getHibernateTemplate().saveOrUpdate(emp);
	// return the saved employee data
		return  emp;
	}

	@Override
	public boolean deleteEmployee(String empID) {
		// find proper way to delete Object.
		boolean deleted = true;
		try {
			getHibernateTemplate().delete(getHibernateTemplate().get(EmployeeImpl.class, empID));
		} catch (DataAccessException e) {
			deleted = false;
			e.printStackTrace();
		}
		return deleted;
	}

}
