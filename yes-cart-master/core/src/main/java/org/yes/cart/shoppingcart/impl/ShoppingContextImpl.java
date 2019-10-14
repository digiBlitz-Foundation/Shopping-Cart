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

package org.yes.cart.shoppingcart.impl;

import org.yes.cart.shoppingcart.MutableShoppingContext;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * Shopping context implementation.
 *
 * Igor Azarny iazarny@yahoo.com
 * Date: 12-May-2011
 * Time: 10:37:13
 */
public class ShoppingContextImpl implements MutableShoppingContext {

    private static final long serialVersionUID =  20110509L;

    private String customerName;
    private long shopId;
    private String shopCode;
    private long customerShopId;
    private String customerShopCode;
    private String countryCode;
    private String stateCode;
    private String customerEmail;
    private List<String> customerShops;

    private boolean taxInfoChangeViewEnabled;
    private boolean taxInfoEnabled;
    private boolean taxInfoUseNet;
    private boolean taxInfoShowAmount;

    private boolean hidePrices;

    private List<String> latestViewedSkus;
    private List<String> latestViewedCategories;
    private String resolvedIp;

    /** {@inheritDoc} */
    public String getCustomerEmail() {
        return customerEmail;
    }

    /**
         * Set customer email.
         * @param customerEmail customer email.
         */
    public void setCustomerEmail(final String customerEmail) {
        this.customerEmail = customerEmail;
    }

    /**
         * Clear context.
         */
    public void clearContext() {
        clearShopRelatedParameters();
        customerEmail = null;
        customerName = null;
        customerShops = new ArrayList<String>(0);
        customerShopId = shopId;
        customerShopCode = shopCode;
    }

    private void clearShopRelatedParameters() {
        //we do not empty the cart on log off, so we really should not remove these as well then
        //latestViewedSkus = null;
        //latestViewedCategories = null;
        resolvedIp = null;
        taxInfoChangeViewEnabled = false;
        taxInfoEnabled = false;
        taxInfoUseNet = false;
        taxInfoShowAmount = false;
        hidePrices = false;
    }

    /** {@inheritDoc} */
    public String getResolvedIp() {
        return resolvedIp;
    }

    /**
     * Set shopper ip address.
     *
     * @param resolvedIp resolved ip address.
     */
    public void setResolvedIp(final String resolvedIp) {
        this.resolvedIp = resolvedIp;
    }

    /** {@inheritDoc} */
    public List<String> getLatestViewedSkus() {
        return latestViewedSkus;
    }

    /**
     * Set latest viewed sku codes.
     *
     * @param latestViewedSkus latest viewed skus.
     */
    public void setLatestViewedSkus(final List<String> latestViewedSkus) {
        this.latestViewedSkus = latestViewedSkus;
    }

    /** {@inheritDoc} */
    public List<String> getLatestViewedCategories() {
        return latestViewedCategories;
    }

    /**
     * Set last viewed categories.
     *
     * TODO: YC-360
     *
     * @param latestViewedCategories comma separated list of category ids.
     */
    public void setLatestViewedCategories(final List<String> latestViewedCategories) {
        this.latestViewedCategories = latestViewedCategories;
    }

    /** {@inheritDoc} */
    public String getCustomerName() {
        return customerName;
    }

    /**
     * Set customer name.
     *
     * @param customerName customer name.
     */
    public void setCustomerName(final String customerName) {
        this.customerName = customerName;
    }

    /** {@inheritDoc} */
    public List<String> getCustomerShops() {
        return customerShops;
    }

    /**
     * Set customer active shops.
     *
     * @param shops customer active shops
     */
    public void setCustomerShops(final List<String> shops) {
        this.customerShops = shops;
    }

    /** {@inheritDoc} */
    public long getShopId() {
        return shopId;
    }

    /**
     * Set current shop id.
     *
     * @param shopId current shop id.
     */
    public void setShopId(final long shopId) {
        if (this.shopId != shopId) {
            clearShopRelatedParameters();
        }
        this.shopId = shopId;
        this.customerShopId = shopId;
    }

    /** {@inheritDoc} */
    public String getShopCode() {
        return shopCode;
    }

    /**
     * Set current shop code.
     *
     * @param shopCode current shop code.
     */
    public void setShopCode(final String shopCode) {
        if (!shopCode.equals(this.shopCode)) {
            clearShopRelatedParameters();
        }
        this.shopCode = shopCode;
        this.customerShopCode = shopCode;
    }

    /** {@inheritDoc} */
    public long getCustomerShopId() {
        return customerShopId;
    }

    /**
     * Set current customer shop id.
     *
     * @param customerShopId current customer shop id.
     */
    public void setCustomerShopId(final long customerShopId) {
        this.customerShopId = customerShopId;
    }

    /** {@inheritDoc} */
    public String getCustomerShopCode() {
        return customerShopCode;
    }

    /**
     * Set current customer shop code.
     *
     * @param customerShopCode current customer shop code.
     */
    public void setCustomerShopCode(final String customerShopCode) {
        this.customerShopCode = customerShopCode;
    }

    /** {@inheritDoc} */
    public String getCountryCode() {
        return countryCode;
    }

    /**
     * Set current country code.
     *
     * @param countryCode current country code.
     */
    public void setCountryCode(final String countryCode) {
        this.countryCode = countryCode;
    }

    /** {@inheritDoc} */
    public String getStateCode() {
        return stateCode;
    }

    /**
     * Set current state code.
     *
     * @param stateCode current state code.
     */
    public void setStateCode(final String stateCode) {
        this.stateCode = stateCode;
    }

    /** {@inheritDoc} */
    public boolean isTaxInfoChangeViewEnabled() {
        return taxInfoChangeViewEnabled;
    }

    /**
     * Set flag to indicate if tax info view change is enabled.
     *
     * @param taxInfoChangeViewEnabled true if enabled
     */
    public void setTaxInfoChangeViewEnabled(final boolean taxInfoChangeViewEnabled) {
        this.taxInfoChangeViewEnabled = taxInfoChangeViewEnabled;
    }

    /** {@inheritDoc} */
    public boolean isTaxInfoEnabled() {
        return taxInfoEnabled;
    }

    /**
     * Set flag to indicate if tax info is enabled.
     *
     * @param taxInfoEnabled true if enabled
     */
    public void setTaxInfoEnabled(final boolean taxInfoEnabled) {
        this.taxInfoEnabled = taxInfoEnabled;
    }

    /** {@inheritDoc} */
    public boolean isTaxInfoUseNet() {
        return taxInfoUseNet;
    }

    /**
     * Set flag to indicate to use net prices to display.
     *
     * @param taxInfoUseNet true for net, false for gross
     */
    public void setTaxInfoUseNet(final boolean taxInfoUseNet) {
        this.taxInfoUseNet = taxInfoUseNet;
    }

    /** {@inheritDoc} */
    public boolean isTaxInfoShowAmount() {
        return taxInfoShowAmount;
    }

    /**
     * Set flag to indicate to display amount of tax.
     *
     * @param taxInfoShowAmount true to display amount, false to display rate
     */
    public void setTaxInfoShowAmount(final boolean taxInfoShowAmount) {
        this.taxInfoShowAmount = taxInfoShowAmount;
    }

    /** {@inheritDoc} */
    public boolean isHidePrices() {
        return hidePrices;
    }

    /**
     * Set flag to indicate to display/hide prices.
     *
     * @param hidePrices true to hide prices, false to show prices
     */
    public void setHidePrices(final boolean hidePrices) {
        this.hidePrices = hidePrices;
    }
}
