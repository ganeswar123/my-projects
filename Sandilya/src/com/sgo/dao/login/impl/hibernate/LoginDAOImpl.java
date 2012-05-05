/**
 * 
 */
package com.sgo.dao.login.impl.hibernate;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.sgo.dao.login.LoginDAO;
import com.sgo.dto.user.User;

/**
 * @author GANESH
 *
 */
public class LoginDAOImpl extends HibernateDaoSupport implements LoginDAO{

	@SuppressWarnings("unchecked")
	@Override
	public User findByUsernameAndPassword(String username, String password) {
		User user = null;
		String[] params = new String[2];
		params[0] = username;
		params[1] = password;
		List<User> userList = new ArrayList<User>();
		Query qr = getSession().createQuery("from UserImpl where userName =:username and password =:password");
		qr.setString("username", username);
		qr.setString("password", password);
		userList = qr.list();
		System.out.println(" Login sucessfull from backend"+userList.size());
		if(!userList.isEmpty()){
			user = userList.get(0);
		}
		return user;
		
	}

}
