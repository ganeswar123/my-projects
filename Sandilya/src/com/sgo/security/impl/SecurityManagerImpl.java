/**
 * 
 */
package com.sgo.security.impl;

import com.sgo.dto.user.User;
import com.sgo.security.SecurityManager;
import com.sgo.service.login.LoginService;

/**
 * @author GANESH
 *
 */
public class SecurityManagerImpl implements SecurityManager {
	LoginService loginService;
	/**
	 * @param loginService the loginService to set
	 */
	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	/* (non-Javadoc)
	 * @see com.sgo.security.SecurityManager#login(java.lang.String, java.lang.String)
	 */
	@Override
	public User login(String username, String password) {
		return loginService.findByUsernameAndPassword (username, password);
	}

}
