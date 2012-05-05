/**
 * 
 */
package com.sgo.security;

import com.sgo.dto.user.User;

/**
 * @author GANESH
 *
 */
public interface SecurityManager {
	 public User login (String username, String password);
}
