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
public interface LoginService {
	public void setLoginDAO(LoginDAO loginDAO);
 User findByUsernameAndPassword(String username,String password);
}
