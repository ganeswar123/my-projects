/**
 * 
 */
package com.sgo.dto.library;

import java.io.Serializable;

/**
 * @author GANESH
 *
 */
public class StoredIn implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3278820050590484211L;
private Integer mediaID;
private String name;
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
}
