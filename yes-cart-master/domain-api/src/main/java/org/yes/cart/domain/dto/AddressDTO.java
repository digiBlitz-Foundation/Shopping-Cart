/*
 * Copyright 2009 Denys Pavlov, Igor Azarnyi
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */

package org.yes.cart.domain.dto;


import org.yes.cart.domain.entity.Identifiable;

/**
 * Shipment and billing address interface.
 * <p/>
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 07-May-2011
 * Time: 11:12:54
 */
public interface AddressDTO extends Identifiable {

    /**
     * Get pk value
     *
     * @return pk value
     */
    long getAddressId();

    /**
     * Set pk value.
     *
     * @param addressId value o set
     */
    void setAddressId(long addressId);

    /**
     * Get city.
     *
     * @return city
     */
    String getCity();

    /**
     * Set city
     *
     * @param city value to set
     */
    void setCity(String city);

    /**
     * Get postcode.
     *
     * @return post code
     */
    String getPostcode();

    /**
     * Set post code
     *
     * @param postcode value to set
     */
    void setPostcode(String postcode);

    /**
     * Addr line 1.
     *
     * @return addr line 1
     */
    String getAddrline1();

    /**
     * Set first address line
     *
     * @param addrline1 value to set
     */
    void setAddrline1(String addrline1);

    /**
     * Get second address line
     *
     * @return value to set
     */
    String getAddrline2();

    /**
     * Set address line 2.
     *
     * @param addrline2 value to set
     */
    void setAddrline2(String addrline2);

    /**
     * Get address type
     *
     * @return addr type
     */
    String getAddressType();

    /**
     * Set addr type.
     *
     * @param addressType value to set
     */
    void setAddressType(String addressType);

    /**
     * Get country.
     *
     * @return coubtry.
     */
    String getCountryCode();

    /**
     * Set country.
     *
     * @param countryCode country to set
     */
    void setCountryCode(String countryCode);

    /**
     * Get first name.
     *
     * @return first name
     */
    String getFirstname();

    /**
     * Set first name
     *
     * @param firstname value to set
     */
    void setFirstname(String firstname);

    /**
     * Get last name.
     *
     * @return last name
     */
    String getLastname();

    /**
     * Set last name
     *
     * @param lastname value to set
     */
    void setLastname(String lastname);

    /**
     * Get middle name
     *
     * @return middle name
     */
    String getMiddlename();

    /**
     * Set middle name
     *
     * @param middlename value to set
     */
    void setMiddlename(String middlename);


    /**
     * Get salutation
     *
     * @return salutation
     */
    String getSalutation();

    /**
     * Set salutation
     *
     * @param salutation value to set
     */
    void setSalutation(String salutation);


    /**
     * Get customer id .
     *
     * @return customer id
     */
    long getCustomerId();

    /**
     * Set customer id
     *
     * @param customerId customer id
     */
    void setCustomerId(long customerId);


    /**
     * Is address default. Only one default addrtess allowed per address type.
     *
     * @return true if address default.
     */
    boolean isDefaultAddress();


    /**
     * Set deafult flag.
     *
     * @param defaultAddress deafult address flag
     */
    void setDefaultAddress(boolean defaultAddress);


    /**
     * State or province code.
     *
     * @return state or province code
     */
    String getStateCode();

    /**
     * Set state or province.
     *
     * @param stateCode state.
     */
    void setStateCode(final String stateCode);


    /**
     * Get phone.
     *
     * @return phone.
     */
    String getPhone1();


    /**
     * set phone.
     *
     * @param phone1 phone.
     */
    void setPhone1(String phone1);


    /**
     * Get phone.
     *
     * @return phone.
     */
    String getPhone2();


    /**
     * set phone.
     *
     * @param phone2 phone.
     */
    void setPhone2(String phone2);

    /**
     * Get email.
     *
     * @return email.
     */
    String getEmail1();


    /**
     * set email.
     *
     * @param email1 email.
     */
    void setEmail1(String email1);

    /**
     * Get email.
     *
     * @return email.
     */
    String getEmail2();


    /**
     * set email.
     *
     * @param email2 email.
     */
    void setEmail2(String email2);

    /**
     * Get mobile.
     *
     * @return mobile.
     */
    String getMobile1();


    /**
     * set mobile.
     *
     * @param mobile1 mobile.
     */
    void setMobile1(String mobile1);

    /**
     * Get mobile.
     *
     * @return mobile.
     */
    String getMobile2();


    /**
     * set mobile.
     *
     * @param mobile2 mobile.
     */
    void setMobile2(String mobile2);

    /**
     * Get custom.
     *
     * @return custom.
     */
    String getCustom0();


    /**
     * set custom.
     *
     * @param custom0 custom.
     */
    void setCustom0(String custom0);

    /**
     * Get custom.
     *
     * @return custom.
     */
    String getCustom1();


    /**
     * set custom.
     *
     * @param custom1 custom.
     */
    void setCustom1(String custom1);

    /**
     * Get custom.
     *
     * @return custom.
     */
    String getCustom2();


    /**
     * set custom.
     *
     * @param custom2 custom.
     */
    void setCustom2(String custom2);


    /**
     * Get custom.
     *
     * @return custom.
     */
    String getCustom3();


    /**
     * set custom.
     *
     * @param custom3 custom.
     */
    void setCustom3(String custom3);

    /**
     * Get custom.
     *
     * @return custom.
     */
    String getCustom4();


    /**
     * set custom.
     *
     * @param custom4 custom.
     */
    void setCustom4(String custom4);


    /**
     * Get custom.
     *
     * @return custom.
     */
    String getCustom5();


    /**
     * set custom.
     *
     * @param custom5 custom.
     */
    void setCustom5(String custom5);


    /**
     * Get custom.
     *
     * @return custom.
     */
    String getCustom6();


    /**
     * set custom.
     *
     * @param custom6 custom.
     */
    void setCustom6(String custom6);


    /**
     * Get custom.
     *
     * @return custom.
     */
    String getCustom7();


    /**
     * set custom.
     *
     * @param custom7 custom.
     */
    void setCustom7(String custom7);


    /**
     * Get custom.
     *
     * @return custom.
     */
    String getCustom8();


    /**
     * set custom.
     *
     * @param custom8 custom.
     */
    void setCustom8(String custom8);



    /**
     * Get custom.
     *
     * @return custom.
     */
    String getCustom9();


    /**
     * set custom.
     *
     * @param custom9 custom.
     */
    void setCustom9(String custom9);


}
