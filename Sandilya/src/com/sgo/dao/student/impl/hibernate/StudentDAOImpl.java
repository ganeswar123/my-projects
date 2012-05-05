/**
 * 
 */
package com.sgo.dao.student.impl.hibernate;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sgo.dao.student.StudentDAO;
import com.sgo.dto.student.Student;

/**
 * @author a42763
 *
 */
public class StudentDAOImpl extends HibernateDaoSupport implements StudentDAO {

	@Override
	public void addStudent(Student student) {
		getHibernateTemplate().save(student);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Student> listStudent() {
		return getHibernateTemplate().find("from StudentImpl");
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Student> searchStudent(String[]params) {
		return getHibernateTemplate().find("from StudentImpl where firstName like ? or lastName like ?  or email like ?  ",params);
	}

}
