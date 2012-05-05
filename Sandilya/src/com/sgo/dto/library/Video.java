/**
 * 
 */
package com.sgo.dto.library;

import java.io.Serializable;

/**
 * @author GANESH
 *
 */
public class Video implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 321215127119886478L;
	private String title;
	private Integer year;
	private Long rating;
	private Long price;
	private String director;
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
	 * @return the rating
	 */
	public Long getRating() {
		return rating;
	}
	/**
	 * @param rating the rating to set
	 */
	public void setRating(Long rating) {
		this.rating = rating;
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
	/**
	 * @return the director
	 */
	public String getDirector() {
		return director;
	}
	/**
	 * @param director the director to set
	 */
	public void setDirector(String director) {
		this.director = director;
	}

}
