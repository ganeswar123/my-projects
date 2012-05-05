/**
 * 
 */
package com.sgo.dto.library;

import java.io.Serializable;

/**
 * @author GANESH
 *
 */
public class Location implements Serializable {

	/**
	 * 
	 */
private static final long serialVersionUID = 8699931121057236479L;
private String name;
private String addr;
private String phone;
/**
 * @return the name
 */
public String getName() {
	return name;
}
/**
 * @param name the name to set
 */
public void setName(String name) {
	this.name = name;
}
/**
 * @return the addr
 */
public String getAddr() {
	return addr;
}
/**
 * @param addr the addr to set
 */
public void setAddr(String addr) {
	this.addr = addr;
}
/**
 * @return the phone
 */
public String getPhone() {
	return phone;
}
/**
 * @param phone the phone to set
 */
public void setPhone(String phone) {
	this.phone = phone;
}
}
