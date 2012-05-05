package com.sgo.dto.library;

import java.io.Serializable;

public class Book implements Serializable {

	/**
	 * 
	 */
private static final long serialVersionUID = 3103211431391622105L;
private String ISBN;
private String title;
private String auther;
private Integer year;
private Integer deway;
private Long price;
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
/**
 * @return the title
 */
public String getTitle() {
	return title;
}
/**
 * @param title the title to set
 */
public void setTitle(String title) {
	this.title = title;
}
/**
 * @return the auther
 */
public String getAuther() {
	return auther;
}
/**
 * @param auther the auther to set
 */
public void setAuther(String auther) {
	this.auther = auther;
}
/**
 * @return the year
 */
public Integer getYear() {
	return year;
}
/**
 * @param year the year to set
 */
public void setYear(Integer year) {
	this.year = year;
}
/**
 * @return the deway
 */
public Integer getDeway() {
	return deway;
}
/**
 * @param deway the deway to set
 */
public void setDeway(Integer deway) {
	this.deway = deway;
}
/**
 * @return the price
 */
public Long getPrice() {
	return price;
}
/**
 * @param price the price to set
 */
public void setPrice(Long price) {
	this.price = price;
}
}
