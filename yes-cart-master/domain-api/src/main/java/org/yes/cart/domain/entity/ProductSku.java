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

import java.math.BigDecimal;
import java.util.Collection;

/**
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 07-May-2011
 * Time: 11:12:54
 * <p/>
 * Product sku. Sku is product or product variation.
 * By default one product has at leat one sku
 * or several in case of multisku product.
 * Sku is abbreviation from stock keeping unit.
 * Attribute values is distinguish between sku for multisku product.
 */
public interface ProductSku extends Auditable, Attributable, Rankable , Seoable, Codable {

    /**
     * @return sku primary key
     */
    long getSkuId();

    /**
     * Set primary key value.
     *
     * @param skuId primary key value.
     */
    void setSkuId(long skuId);

    /**
     * Get the sku code.
     *
     * @return sku code
     */
    String getCode();

    /**
     * Stock keeping unit code.
     * Limitation code must not contains underscore
     *
     * @param code code
     */
    void setCode(String code);

    /**
     * Get the non unique product code.
     *
     * @return product code.
     */
    String getManufacturerCode();

    /**
     * Manufacturer non unique product code.
     * Limitation code must not contains underscore
     *
     * @param code manufacturer code
     */
    void setManufacturerCode(String code);

    /**
     * Get the non unique product code.
     *
     * @return product code.
     */
    String getManufacturerPartCode();

    /**
     * Manufacturer non unique product code.
     * Limitation code must not contains underscore
     *
     * @param code manufacturer code
     */
    void setManufacturerPartCode(String code);

    /**
     * Get the non unique product code.
     *
     * @return product code.
     */
    String getSupplierCode();

    /**
     * Supplier non unique product code.
     * Limitation code must not contains underscore
     *
     * @param code supplier code
     */
    void setSupplierCode(String code);

    /**
     * Get the non unique product catalog code.
     *
     * @return catalog code.
     */
    String getSupplierCatalogCode();

    /**
     * Supplier non unique catalog code.
     * Limitation code must not contains underscore
     *
     * @param code catalog code
     */
    void setSupplierCatalogCode(String code);

    /**
     * Get the product.
     *
     * @return {@link Product}
     */
    Product getProduct();

    /**
     * Set {@link Product}.
     *
     * @param product {@link Product}
     */
    void setProduct(Product product);

    /**
     * Get all products attributes.
     *
     * @return collection of product attributes.
     */
    Collection<AttrValueProductSku> getAttributes();

    /**
     * Get all products attributes filtered by given name.
     *
     * @param attributeCode code of attribute
     * @return collection of product attributes filtered by attribute name or empty collection if no attribute were found.
     */
    ///////////////////////// Collection<AttrValueProductSku> getAttributesByCode(String attributeCode);

    /**
     * Get single attribute.
     *
     * @param attributeCode code of attribute
     * @return single {@link AttrValueProductSku} or null if not found.
     */
    ///////////////////////// AttrValueProductSku getAttributeByCode(String attributeCode);


    /**
     * Set collection of products attributes.
     *
     * @param attribute collection of products attributes
     */
    void setAttributes(Collection<AttrValueProductSku> attribute);



    /**
     * Get the sku name.
     *
     * @return sku name.
     */
    String getName();

    /**
     * Set sku name.
     *
     * @param name sku name.
     */
    void setName(String name);

    /**
     * display name.
     *
     * @return display name.
     */
    String getDisplayName();

    /**
     * Get display name
     *
     * @param name display name
     */
    void setDisplayName(String name);


    /**
     * Get sku decription.
     *
     * @return sku description.
     */
    String getDescription();

    /**
     * Set sku decription.
     *
     * @param description sku decription.
     */
    void setDescription(String description);

    /**
     * {@inheritDoc}
     */
    int getRank();

    /**
     * {@inheritDoc}
     */
    void setRank(int rank);

    /**
     * Get the sku bar code.
     *
     * @return Sku bar code
     */
    String getBarCode();

    /**
     * Set sku bar code.
     *
     * @param barCode bar code.
     */
    void setBarCode(String barCode);

}


