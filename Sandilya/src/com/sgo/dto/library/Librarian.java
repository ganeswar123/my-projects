/**
 * 
 */
package com.sgo.dto.library;

import java.io.Serializable;

/**
 * @author GANESH
 *
 */
public class Librarian implements Serializable {

/**
 * 
 */
private static final long serialVersionUID = 6787851803165728816L;
private Integer eid;
private Integer ID;
private Long pay;
private String locName;
/**
 * @return the eid
 */
public Integer getEid() {
	return eid;
}
/**
 * @param eid the eid to set
 */
public void setEid(Integer eid) {
	this.eid = eid;
}
/**
 * @return the iD
 */
public Integer getID() {
	return ID;
}
/**
 * @param iD the iD to set
 */
public void setID(Integer iD) {
	ID = iD;
}
/**
 * @return the pay
 */
public Long getPay() {
	return pay;
}
/**
 * @param pay the pay to set
 */
public void setPay(Long pay) {
	this.pay = pay;
}
/**
 * @return the locName
 */
public String getLocName() {
	return locName;
}
/**
 * @param locName the locName to set
 */
public void setLocName(String locName) {
	this.locName = locName;
}
}
