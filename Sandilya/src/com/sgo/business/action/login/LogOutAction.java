/**
 * 
 */
package com.sgo.business.action.login;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sgo.utility.Constants;

/**
 * @author GANESH
 *
 */
public class LogOutAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1615808417027157589L;

	public String execute(){
		  Map session = ActionContext.getContext().getSession();
		  session.remove(Constants.USER_HANDLE);
		return SUCCESS;
		
	}


}
