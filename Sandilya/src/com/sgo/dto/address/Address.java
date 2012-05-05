/**
 * 
 */
package com.sgo.dto.address;

/**
 * @author a42763
 *
 */
public interface Address {
	/**
	 * @return the addressID
	 */
	public Long getAddressID();
	/**
	 * @param addressID the addressID to set
	 */
	public void setAddressID(Long addressID);
	/**
	 * @return the addressType
	 */
	public String getAddressType();
	/**
	 * @param addressType the addressType to set
	 */
	public void setAddressType(String addressType) ;
	/**
	 * @return the firstName
	 */
	public String getFirstName() ;
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) ;
	/**
	 * @return the middleName
	 */
	public String getMiddleName();
	/**
	 * @param middleName the middleName to set
	 */
	public void setMiddleName(String middleName);
	/**
	 * @return the lastName
	 */
	public String getLastName();
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName);
	/**
	 * @return the addressOne
	 */
	public String getAddressOne();
	/**
	 * @param addressOne the addressOne to set
	 */
	public void setAddressOne(String addressOne);
	/**
	 * @return the street
	 */
	public String getStreet();
	/**
	 * @param street the street to set
	 */
	public void setStreet(String street);
	/**
	 * @return the dist
	 */
	public String getDist();
	/**
	 * @param dist the dist to set
	 */
	public void setDist(String dist);
	/**
	 * @return the state
	 */
	public String getState();
	/**
	 * @param state the state to set
	 */
	public void setState(String state);
	/**
	 * @return the country
	 */
	public String getCountry();
	/**
	 * @param country the country to set
	 */
	public void setCountry(String country);
	/**
	 * @return the pin
	 */
	public Long getPin();
	/**
	 * @param pin the pin to set
	 */
	public void setPin(Long pin);

}
