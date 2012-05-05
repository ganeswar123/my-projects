/**
 * 
 */
package com.sgo.service.student;

import java.util.List;

import com.sgo.dao.student.StudentDAO;
import com.sgo.dto.student.Student;

/**
 * @author a42763
 *
 */
public class StudentServiceImpl implements StudentService {
	StudentDAO studentDAO;
	
	public void setStudentDAO(StudentDAO studentDAO){
		this.studentDAO = studentDAO;
	}
	
	@Override
	public void addStudent(Student student) {
		studentDAO.addStudent(student);
		
	}

	@Override
	public List<Student> listStudent() {
		return studentDAO.listStudent();
	}
	@Override
	public List<Student> searchStudent(String[] params) {
		return studentDAO.searchStudent(params);
	}

}
