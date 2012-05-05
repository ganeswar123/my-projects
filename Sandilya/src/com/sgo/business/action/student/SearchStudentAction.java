/**
 * 
 */
package com.sgo.business.action.student;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.sgo.dto.student.Student;
import com.sgo.service.student.StudentService;

/**
 * @author a42763
 *
 */
public class SearchStudentAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7188691932077819911L;

	public String firstName;
	public String lastName;
	public String email;
	
	List<Student> studentList = new ArrayList<Student>();
	 
	StudentService studentService;
	//DI via Spring
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
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
public List<Student> getStudentList() {
	return studentList;
}

/**
 * @param employeeList the employeeList to set
 */
public void setStudentList(List<Student> studentList) {
	this.studentList = studentList;
}

public String searchStudent() throws Exception{
	
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
	studentList = studentService.searchStudent(params);
	System.out.println("Size----Search----->"+studentList.size());
	return SUCCESS;

}
}