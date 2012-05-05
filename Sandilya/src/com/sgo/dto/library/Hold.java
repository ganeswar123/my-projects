/**
 * 
 */
package com.sgo.dto.library;

import java.io.Serializable;

/**
 * @author GANESH
 *
 */
public class Hold implements Serializable {

	/**
	 * 
	 */
private static final long serialVersionUID = 2462098422478596182L;
private Integer mediaId;
private Integer num;
private String name;
private String until;
private Integer queue;
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
/**
 * @return the queue
 */
public Integer getQueue() {
	return queue;
}
/**
 * @param queue the queue to set
 */
public void setQueue(Integer queue) {
	this.queue = queue;
}

}
