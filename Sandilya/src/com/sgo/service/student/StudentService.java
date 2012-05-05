/**
 * 
 */
package com.sgo.service.student;

import java.util.List;

import com.sgo.dto.student.Student;

/**
 * @author a42763
 *
 */
public interface StudentService {
	
	public void addStudent(Student student);
	public List<Student> listStudent();
	List<Student> searchStudent(String[] params);

}
