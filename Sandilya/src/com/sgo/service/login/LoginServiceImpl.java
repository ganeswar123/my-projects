/**
 * 
 */
package com.sgo.service.login;

import com.sgo.dao.login.LoginDAO;
import com.sgo.dto.user.User;

/**
 * @author GANESH
 *
 */
public class LoginServiceImpl implements LoginService {
public LoginDAO loginDAO;

/**
 * @param loginDAO the loginDAO to set
 */
public void setLoginDAO(LoginDAO loginDAO) {
	this.loginDAO = loginDAO;
}

@Override
public User findByUsernameAndPassword(String username, String password) {
	return loginDAO.findByUsernameAndPassword(username, password);
}
}
