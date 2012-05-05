/**
 * 
 */
package com.sgo.dao.student;

import java.util.List;

import com.sgo.dto.student.Student;

/**
 * @author a42763
 *
 */
public interface StudentDAO {

	public void addStudent(Student emp);
	public List<Student> listStudent();
	List<Student> searchStudent(String[] params);
}
