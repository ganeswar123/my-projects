/**
 * 
 */
package com.sgo.dto.library;

import java.io.Serializable;

/**
 * @author GANESH
 *
 */
public class BookMedia implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -458502386678210032L;
	private Integer mediaId;
	private String ISBN;
	/**
	 * @return the mediaId
	 */
	public Integer getMediaId() {
		return mediaId;
	}
	/**
	 * @param mediaId the mediaId to set
	 */
	public void setMediaId(Integer mediaId) {
		this.mediaId = mediaId;
	}
	/**
	 * @return the iSBN
	 */
	public String getISBN() {
		return ISBN;
	}
	/**
	 * @param iSBN the iSBN to set
	 */
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}

}
