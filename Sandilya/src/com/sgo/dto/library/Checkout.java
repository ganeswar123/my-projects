/**
 * 
 */
package com.sgo.dto.library;

import java.io.Serializable;

/**
 * @author GANESH
 *
 */
public class Checkout implements Serializable {

	/**
	 * 
	 */
private static final long serialVersionUID = 3815053263924388977L;
private Integer mediaID;
private Integer num;
private String since;
private String until;
/**
 * @return the mediaID
 */
public Integer getMediaID() {
	return mediaID;
}
/**
 * @param mediaID the mediaID to set
 */
public void setMediaID(Integer mediaID) {
	this.mediaID = mediaID;
}
/**
 * @return the num
 */
public Integer getNum() {
	return num;
}
/**
 * @param num the num to set
 */
public void setNum(Integer num) {
	this.num = num;
}
/**
 * @return the since
 */
public String getSince() {
	return since;
}
/**
 * @param since the since to set
 */
public void setSince(String since) {
	this.since = since;
}
/**
 * @return the until
 */
public String getUntil() {
	return until;
}
/**
 * @param until the until to set
 */
public void setUntil(String until) {
	this.until = until;
}
}
