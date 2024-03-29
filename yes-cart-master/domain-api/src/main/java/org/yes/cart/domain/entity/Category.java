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

import org.yes.cart.domain.misc.navigation.price.PriceTierTree;

import java.util.Collection;
import java.util.Date;
import java.util.Set;

/**
 * Category self related entity.
 * <p/>
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 07-May-2011
 * Time: 11:12:54
 */
public interface Category extends Auditable, Attributable, Seoable  {

    /**
     * Price navigation in category.
     */
    String PRICE_TREE_ALIAS = "pricetree";
    /**
     * Price navigation in category.
     */
    String PRICE_NODE_ALIAS = "pricenode";


    /**
     * Get category pk value.
     *
     * @return category pk value
     */
    long getCategoryId();

    /**
     * Set category pk value.
     *
     * @param categoryId pk value
     */
    void setCategoryId(long categoryId);

    /**
     * Get parent pk value.
     *
     * @return parent pk value.
     */
    long getParentId();

    /**
     * Set parent pk value.
     *
     * @param parentId parent pk value.
     */
    void setParentId(long parentId);


    /**
     * Get link to pk value.
     *
     * @return link to pk value.
     */
    Long getLinkToId();

    /**
     * Set link to pk value.
     *
     * @param linkToId link to pk value.
     */
    void setLinkToId(Long linkToId);


    /**
     * Get category rank inside parent category.
     *
     * @return category rank.
     */
    int getRank();

    /**
     * Set category rank.
     *
     * @param rank category rank
     */
    void setRank(int rank);

    /**
     * Default product type in category.
     * Set it, to allow filtered navigation by attributes.
     *
     * @return default product type in category
     */
    ProductType getProductType();

    /**
     * Set default product type.
     *
     * @param productType default product type.
     */
    void setProductType(ProductType productType);

    /**
     * Get category name.
     *
     * @return category name.
     */
    String getName();

    /**
     * Set category name.
     *
     * @param name category name.
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
     * Get category description.
     *
     * @return category description.
     */
    String getDescription();

    /**
     * Set description
     *
     * @param description description
     */
    void setDescription(String description);

    /**
     * Get category UI template variation.
     *
     * @return category UI template variation.
     */
    String getUitemplate();

    /**
     * Set category UI template variation.
     *
     * @param uitemplate template variation.
     */
    void setUitemplate(String uitemplate);

    /**
     * Get available from date.  Null value means no start.
     *
     * @return available from date.
     */
    Date getAvailablefrom();

    /**
     * Set available from date.
     *
     * @param availablefrom available from date.
     */
    void setAvailablefrom(Date availablefrom);

    /**
     * Get available to date.  Null value means no end date.
     *
     * @return available to date.
     */
    Date getAvailableto();

    /**
     * Set available to date.
     *
     * @param availableto available to date.
     */
    void setAvailableto(Date availableto);

    /**
     * Get all caterory attributes.
     *
     * @return collection of category attributes.
     */
    Collection<AttrValueCategory> getAttributes();


    /**
     * Set collection of category attributes.
     *
     * @param attribute collection of category  attributes
     */
    void setAttributes(Collection<AttrValueCategory> attribute);


    /**
     * Get all product assigned to category.
     *
     * @return set of products assigned to category.
     */
    Set<ProductCategory> getProductCategory();

    /**
     * Set product assigned to category.
     *
     * @param productCategory product assigned to category.
     */
    void setProductCategory(Set<ProductCategory> productCategory);

    /**
     * @return true if filtered navigation by attributes allowed
     * @see Category#getProductType()
     */
    Boolean getNavigationByAttributes();

    /**
     * Set navigation by attributes flag in this category.
     *
     * @param navigationByAttributes navigation by attributes
     */
    void setNavigationByAttributes(Boolean navigationByAttributes);

    /**
     * @return true if filtered navigation by brand allowed
     * @see Category#getProductType()
     */
    Boolean getNavigationByBrand();

    /**
     * Set navigation by brands in this category.
     *
     * @param navigationByBrand navigation by brands flag
     */
    void setNavigationByBrand(Boolean navigationByBrand);

    /**
     * @return true if filtered navigation by price ranges allowed
     * @see Category#getProductType()
     */
    Boolean getNavigationByPrice();

    /**
     * Set navigation by price range in this category.
     *
     * @param navigationByPrice navigation by price range flag
     */
    void setNavigationByPrice(Boolean navigationByPrice);

    /**
     * Optional price range configuration. Default shop price tiers configuration will used if empty.
     *
     * @return price range configuration for price filtered navigation
     */
    String getNavigationByPriceTiers();

    /**
     * Set price range configuration for price filtered navigation.
     *
     * @param navigationByPriceTiers price range configuration.
     */
    void setNavigationByPriceTiers(String navigationByPriceTiers);

    /**
     * Get {@link PriceTierTree} for price filtered navigation.
     *
     * @return {@link PriceTierTree} if it set.
     */
    PriceTierTree getNavigationByPriceTree();

    /**
     * Set {@link PriceTierTree} price filtered navigation object, that will be transformed into xml on db.
     *
     * @param tree {@link PriceTierTree}
     */
    void setNavigationByPriceTree(PriceTierTree tree);

    /**
     * This method check if current category is root of catalog or content root
     *
     * @return true if this category is root
     */
    boolean isRoot();

}


