/**
 * 
 */
package com.sgo.dao.login;

import com.sgo.dto.user.User;

/**
 * @author GANESH
 *
 */
public interface LoginDAO {
	 User findByUsernameAndPassword(String username,String password);
}
