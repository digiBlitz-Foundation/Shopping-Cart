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

package org.yes.cart.service.dto;

import org.yes.cart.domain.dto.ProductCategoryDTO;

/**
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 07-May-2011
 * Time: 11:13:01
 */
public interface DtoProductCategoryService extends GenericDTOService<ProductCategoryDTO> {

    /**
     * Delete product from given category
     *
     * @param categoryId given category id
     * @param productId  given product id
     */
    void removeByCategoryProductIds(long categoryId, long productId);

    /**
     * Check is product already assigned to category
     *
     * @param categoryId given category id
     * @param productId  given product id
     */
    boolean isAssignedCategoryProductIds(long categoryId, long productId);

    /**
     * Unlink product from all categories.
     *
     * @param productId  given product id
     */
    void removeByProductIds(long productId);


    /**
     * Get the next rank for product during product assignment.
     * Default step is 50.
     *
     * @param categoryId category id
     * @return rank.
     */
    int getNextRank(long categoryId);
}
