package com.sgo.intercepter;

import static com.sgo.utility.Constants.LOGIN_ATTEMPT;
import static com.sgo.utility.Constants.PASSWORD;
import static com.sgo.utility.Constants.USERNAME;
import static com.sgo.utility.Constants.USER_HANDLE;
import static org.apache.struts2.StrutsStatics.HTTP_REQUEST;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.xwork.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ValidationAware;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.sgo.dto.user.User;
import com.sgo.security.SecurityManager;


public class LoginInterceptor extends AbstractInterceptor {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2648920372698662573L;
	private SecurityManager securityManager;
	/**
	 * @param securityManager the securityManager to set
	 */
	public void setSecurityManager(SecurityManager securityManager) {
		this.securityManager = securityManager;
	}
	private static final Log log = LogFactory.getLog (LoginInterceptor.class);

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void init() {
		log.info ("Intializing LoginInterceptor");

	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("Inside Login Inteceptor");
	    // Get the action context from the invocation so we can access the
	    // HttpServletRequest and HttpSession objects.
	    final ActionContext context = invocation.getInvocationContext ();
	    HttpServletRequest request = (HttpServletRequest) context.get(HTTP_REQUEST);
	    HttpSession session =  request.getSession (true);
	    // Is there a "user" object stored in the user's HttpSession?
	    Object user = session.getAttribute (USER_HANDLE);
	    if (user == null) {
	        // The user has not logged in yet.

	        // Is the user attempting to log in right now?
	        String loginAttempt = request.getParameter (LOGIN_ATTEMPT);
	        if (! StringUtils.isBlank (loginAttempt) ) { // The user is attempting to log in.

	            // Process the user's login attempt.
	            if (processLoginAttempt (request, session) ) {
	                // The login succeeded send them the login-success page.
	                return "login-success";
	            } else {
	                // The login failed. Set an error if we can on the action.
	                Object action = invocation.getAction ();
	                if (action instanceof ValidationAware) {
	                    ((ValidationAware) action).addActionError ("Username or password incorrect.");
	                }
	            }
	        }

	        // Either the login attempt failed or the user hasn't tried to login yet, 
	        // and we need to send the login form.
	        return "login";
	    } else {
	        return invocation.invoke ();
	    }
	}
	/**
	 * Attempt to process the user's login attempt delegating the work to the 
	 * SecurityManager.
	 */
	public boolean processLoginAttempt (HttpServletRequest request, HttpSession session) {
	    // Get the username and password submitted by the user from the HttpRequest.
	    String username = request.getParameter (USERNAME);
	    String password = request.getParameter (PASSWORD);

	    // Use the security manager to validate the user's username and password.
	    User user = securityManager.login (username, password);

	    if (user != null) {
	        // The user has successfully logged in. Store their user object in 
	        // their HttpSession. Then return true.
	        session.setAttribute (USER_HANDLE, user);
	        System.out.println("Login sucessfully"+true);
	        return true;
	    } else {
	        // The user did not successfully log in. Return false.
	    	System.out.println("Login sucessfully"+false);
	        return false;
	    }
	}
}
