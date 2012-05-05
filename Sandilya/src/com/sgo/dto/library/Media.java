/**
 * 
 */
package com.sgo.dto.library;

import java.io.Serializable;

/**
 * @author GANESH
 *
 */
public class Media implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4918485690267689399L;
	private Integer mediaId;
	private Integer code;
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

}
