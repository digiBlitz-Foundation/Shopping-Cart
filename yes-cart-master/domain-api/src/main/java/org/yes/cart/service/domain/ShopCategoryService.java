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

package org.yes.cart.service.domain;

import org.yes.cart.domain.entity.Category;
import org.yes.cart.domain.entity.Shop;
import org.yes.cart.domain.entity.ShopCategory;

/**
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 07-May-2011
 * Time: 11:13:01
 */
public interface ShopCategoryService extends GenericService<ShopCategory> {

    /**
     * Delete all relation between shops and given category
     *
     * @param category category pk
     */
    void deleteAll(Category category);

    /**
     * Find shop category by given shop and category.
     *
     * @param category given  category
     * @param shop given shop
     */
    ShopCategory findByShopCategory(Shop shop, Category category);

    /**
     * Assign category to shop.
     *
     * @param categoryId category id
     * @param shopId     shop id
     * @return {@link ShopCategory}
     */
    ShopCategory assignToShop(long categoryId, long shopId);

    /**
     * Unassign category from shop.
     *
     * @param categoryId category id
     * @param shopId     shop id
     */
    void unassignFromShop(long categoryId, long shopId);


}
