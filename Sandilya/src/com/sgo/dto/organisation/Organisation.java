/**
 * 
 */
package com.sgo.dto.organisation;

/**
 * @author Ganeswar Barik
 *
 */
public interface Organisation {
	public String getID() ;
	/**
	 * @param iD the iD to set
	 */
	public void setID(String iD);
	
	/**
	 * @return the OrganisationName
	 */
	public String getOrganisationName();
	/**
	 * @param OrganisationName the OrganisationName to set
	 */
	public void setOrganisationName(String organisationName);
	/**
	 * @return the OrganisationType
	 */
	public String getOrganisationType();
	/**
	 * @param OrganisationType the OrganisationType to set
	 */
	public void setOrganisationType(String organisationType);
}
