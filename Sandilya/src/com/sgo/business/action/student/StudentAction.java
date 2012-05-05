/**
 * 
 */
package com.sgo.business.action.student;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sgo.dto.student.Student;
import com.sgo.service.student.StudentService;

/**
 * @author a42763
 *
 */
public class StudentAction extends ActionSupport implements ModelDriven<Student>{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2178640441043178244L;
	/**
	 * 
	 */
	Student student ;
	List<Student> studentList = new ArrayList<Student>();
 
	StudentService studentService;
	//DI via Spring
	public void setStudent(Student student) {
		this.student = student;
	}
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
 
	public Student getModel() {
		return student;
	}
 
	public List<Student> getStudentList() {
		return studentList;
	}
 
	public void setStudentList(List<Student> studentList) {
		this.studentList = studentList;
	}
 
	//save customer
	public String addStudent() throws Exception{
 
		//save it
		student.setJoinDate(new Date(System.currentTimeMillis()));

		studentService.addStudent(student);
 
		//reload the customer list
		studentList = new ArrayList<Student>();
		studentList = studentService.listStudent();
 
		return SUCCESS;
 
	}
 
	//list all customers
	public String listStudent() throws Exception{
 
		studentList = studentService.listStudent();
		System.out.println("Size------>"+studentList.size());
 
		return SUCCESS;
 
	}
}
