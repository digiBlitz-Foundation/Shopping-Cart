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

package org.yes.cart.domain.entity;

import java.util.Collection;
import java.util.List;


/**
 * Customer / Shopper.
 * <p/>
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 07-May-2011
 * Time: 11:12:54
 */
public interface Customer extends RegisteredPerson, Auditable, Taggable {

    /**
     * Get primary key.
     *
     * @return pk value.
     */
    long getCustomerId();

    /**
     * Set pk value.
     *
     * @param customerId pk value to set
     */
    void setCustomerId(long customerId);

    /**
     * Get public key for this user.
     *
     * @return public key
     */
    String getPublicKey();

    /**
     * Set public key for this user.
     *
     * @param publicKey public key
     */
    void setPublicKey(String publicKey);

    /**
     * Get customer type.
     *
     * @return customer type
     */
    String getCustomerType();

    /**
     * Set customer type.
     *
     * @param customerType customer type
     */
    void setCustomerType(String customerType);

    /**
     * Get price type. Price type defines customer segment that has access to this price.
     *
     * @return price type
     */
    String getPricingPolicy();

    /**
     * Set price type. Price type defines customer segment that has access to this price.
     *
     * @param pricingPolicy price type
     */
    void setPricingPolicy(String pricingPolicy);


    /**
     * Flag to determine if this is a guest account
     *
     * @return true if guest account, false for registered user account
     */
    boolean isGuest();

    /**
     * Flag to determine if this is a guest account
     *
     * @param guest true if guest account, false for registered user account
     */
    void setGuest(boolean guest);


    /**
     * Get person email for guest account.
     *
     * @return customer email.
     */
    String getGuestEmail();

    /**
     * Set customer email for guest account
     *
     * @param email email
     */
    void setGuestEmail(String email);


    /**
     * Get correct email for contacting this customer.
     *
     * For registered customers this is {@link #getEmail()}, for guests this is {@link #getGuestEmail()}
     *
     * @return contact email
     */
    String getContactEmail();


    /**
     * Get orders
     *
     * @return customer orders.
     */
    Collection<CustomerOrder> getOrders();

    /**
     * Set customer orders.
     *
     * @param orders orders to set
     */
    void setOrders(Collection<CustomerOrder> orders);


    /**
     * Wish list.
     *
     * @return wish list.
     */
    Collection<CustomerWishList> getWishList();

    /**
     * Set wish list
     *
     * @param wishList wish list.
     */
    void setWishList(Collection<CustomerWishList> wishList);

    /**
     * Get all customer attributes.
     *
     * @return collection of customer attributes.
     */
    Collection<AttrValueCustomer> getAttributes();

    /**
     * Get all customer attributes filtered by given attribute code.
     *
     * @param attributeCode code of attribute
     * @return collection of customer attributes filtered by
     *         attribute name or empty collection if no attribute were found.
     */
    Collection<AttrValueCustomer> getAttributesByCode(String attributeCode);

    /**
     * Get single attribute.
     *
     * @param attributeCode code of attribute
     * @return single {@link AttrValue} or null if not found.
     */
    AttrValueCustomer getAttributeByCode(String attributeCode);


    /**
     * Get customer addresses by given type.
     *
     * @param addressType address type
     * @return list of addresses.
     */
    List<Address> getAddresses(String addressType);

    /**
     * Get default address wuth given type.
     *
     * @param addressType address type
     * @return default address
     */
    Address getDefaultAddress(String addressType);


    /**
     * Set collection of customer attributes.
     *
     * @param attribute collection of customer  attributes
     */
    void setAttributes(Collection<AttrValueCustomer> attribute);

    /**
     * Get all customer addresses.
     *
     * @return customer addresses
     */
    Collection<Address> getAddress();

    /**
     * Set customer addresses.
     *
     * @param address customer addresses.
     */
    void setAddress(Collection<Address> address);


    /**
     * Get assigned shops.
     *
     * @return shops
     */
    Collection<CustomerShop> getShops();

    /**
     * Set assigned shops.
     *
     * @param shops shops
     */
    void setShops(Collection<CustomerShop> shops);

}


