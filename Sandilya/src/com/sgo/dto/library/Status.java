/**
 * 
 */
package com.sgo.dto.library;

import java.io.Serializable;

/**
 * @author GANESH
 *
 */
public class Status implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4015657360428895919L;
private Integer code;
private String decription;
/**
 * @return the code
 */
public Integer getCode() {
	return code;
}
/**
 * @param code the code to set
 */
public void setCode(Integer code) {
	this.code = code;
}
/**
 * @return the decription
 */
public String getDecription() {
	return decription;
}
/**
 * @param decription the decription to set
 */
public void setDecription(String decription) {
	this.decription = decription;
}
}
