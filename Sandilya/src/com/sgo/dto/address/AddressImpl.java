/**
 * 
 */
package com.sgo.dto.address;

import java.io.Serializable;

import com.sgo.dto.address.Address;

/**
 * @author a42763
 *
 */
public class AddressImpl implements Address, Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3940946776356368791L;
	
	private Long AddressID;
	private String addressType;
	private String firstName;
	private String middleName;
	private String lastName;
	private String addressOne;
	private String street;
	private String dist;
	private String state;
	private String country;
	private Long pin;
	/**
	 * @return the addressID
	 */
	public Long getAddressID() {
		return AddressID;
	}
	/**
	 * @param addressID the addressID to set
	 */
	public void setAddressID(Long addressID) {
		AddressID = addressID;
	}
	/**
	 * @return the addressType
	 */
	public String getAddressType() {
		return addressType;
	}
	/**
	 * @param addressType the addressType to set
	 */
	public void setAddressType(String addressType) {
		this.addressType = addressType;
	}
	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return the middleName
	 */
	public String getMiddleName() {
		return middleName;
	}
	/**
	 * @param middleName the middleName to set
	 */
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return the addressOne
	 */
	public String getAddressOne() {
		return addressOne;
	}
	/**
	 * @param addressOne the addressOne to set
	 */
	public void setAddressOne(String addressOne) {
		this.addressOne = addressOne;
	}
	/**
	 * @return the street
	 */
	public String getStreet() {
		return street;
	}
	/**
	 * @param street the street to set
	 */
	public void setStreet(String street) {
		this.street = street;
	}
	/**
	 * @return the dist
	 */
	public String getDist() {
		return dist;
	}
	/**
	 * @param dist the dist to set
	 */
	public void setDist(String dist) {
		this.dist = dist;
	}
	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}
	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}
	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}
	/**
	 * @param country the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}
	/**
	 * @return the pin
	 */
	public Long getPin() {
		return pin;
	}
	/**
	 * @param pin the pin to set
	 */
	public void setPin(Long pin) {
		this.pin = pin;
	}

}
