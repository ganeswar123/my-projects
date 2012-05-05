/**
 * 
 */
package com.sgo.business.action.library;

import com.opensymphony.xwork2.ActionSupport;
import com.sgo.service.library.MediaService;

/**
 * @author Ganesh
 *
 */
public class SearchMediaAction extends ActionSupport {


	/**
	 * 
	 */
	private static final long serialVersionUID = -7390370157003374493L;
	public String type;
	public String title;
	public String athor;
	public String year;
	
	MediaService mediaService;
	/**
	 * @param mediaService the mediaService to set
	 */
	public void setMediaService(MediaService mediaService) {
		this.mediaService = mediaService;
	}
	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
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
	 * @return the athor
	 */
	public String getAthor() {
		return athor;
	}
	/**
	 * @param athor the athor to set
	 */
	public void setAthor(String athor) {
		this.athor = athor;
	}
	/**
	 * @return the year
	 */
	public String getYear() {
		return year;
	}
	/**
	 * @param year the year to set
	 */
	public void setYear(String year) {
		this.year = year;
	}

	public String searchEmployee() throws Exception{
		
		String[] params = new String[3];
		if(getType()!=null &&!("".equalsIgnoreCase(getType().trim()))){
		params[0]= "%"+getType()+"%";
		}else{
			params[0]= getType();
		}
		if(getTitle()!=null &&!("".equalsIgnoreCase(getTitle().trim()))){
			params[1]= "%"+getTitle()+"%";
		}else{
			params[1]= getTitle();
		}
		if(getAthor()!=null &&!("".equalsIgnoreCase(getAthor().trim()))){
			params[2]= "%"+getAthor()+"%";
		}else{
	//		params[2]= getAthor();getYear
		}
		if(getYear()!=null &&!("".equalsIgnoreCase(getYear().trim()))){
			params[3]= "%"+getYear()+"%";
		}else{
			params[3]= getYear();
		}
	//	employeeList = mediaService.searchMedia(params);
	//	System.out.println("Size----Search----->"+employeeList.size());
		return SUCCESS;

	}
}
