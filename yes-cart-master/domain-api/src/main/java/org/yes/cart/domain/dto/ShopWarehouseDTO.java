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
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 07-May-2011
 * Time: 11:12:54
 */
public interface ShopWarehouseDTO extends Identifiable {

    /**
     * @return primary key
     */
    long getShopWarehouseId();

    /**
     * Set primary key.
     *
     * @param shopWarehouseId primary key value.
     */
    void setShopWarehouseId(long shopWarehouseId);

    /**
     * @return shop id
     */
    long getShopId();

    /**
     * @param shopId shop id
     */
    void setShopId(long shopId);

    /**
     * @return warehouse id
     */
    long getWarehouseId();

    /**
     * Set warehouse id.
     *
     * @param warehouseId warehouse id
     */
    void setWarehouseId(long warehouseId);

    /**
     * @return Warehouse name.
     */
    String getWarehouseName();

    /**
     * Set warehouse name.
     *
     * @param warehouseName warehouse name
     */
    void setWarehouseName(String warehouseName);

    /**
     * Get the rank of warehouse usage in shop.
     * @return    rank of warehouse usage
     */
    int getRank();


    /**
     * Set the rank of warehouse usage.
     * @param rank of warehouse usage.
     */
    void setRank(int rank);


}
