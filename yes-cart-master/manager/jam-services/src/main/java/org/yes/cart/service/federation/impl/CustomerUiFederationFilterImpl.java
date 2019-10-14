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

package org.yes.cart.service.federation.impl;

import org.yes.cart.domain.dto.CustomerDTO;
import org.yes.cart.domain.dto.ShopDTO;
import org.yes.cart.service.dto.DtoCustomerService;
import org.yes.cart.service.federation.FederationFilter;
import org.yes.cart.service.federation.ShopFederationStrategy;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/**
 * User: denispavlov
 * Date: 16/09/2014
 * Time: 14:27
 */
public class CustomerUiFederationFilterImpl implements FederationFilter {

    private final ShopFederationStrategy shopFederationStrategy;
    private final DtoCustomerService customerService;

    public CustomerUiFederationFilterImpl(final ShopFederationStrategy shopFederationStrategy,
                                          final DtoCustomerService customerService) {
        this.shopFederationStrategy = shopFederationStrategy;
        this.customerService = customerService;
    }

    /**
     * {@inheritDoc}
     */
    public void applyFederationFilter(final Collection list, final Class objectType) {
        final Set<Long> manageableShopIds = shopFederationStrategy.getAccessibleShopIdsByCurrentManager();
        final Iterator<CustomerDTO> customersIt = list.iterator();
        while (customersIt.hasNext()) {
            final CustomerDTO customer = customersIt.next();

            try {
                final Set<ShopDTO> shops = customerService.getAssignedShop(customer.getCustomerId()).keySet();
                boolean manageable = false;
                for (final ShopDTO shop : shops) {
                    if (manageableShopIds.contains(shop.getShopId())) {
                        manageable = true;
                        break;
                    }
                }

                if (!manageable) {
                    customersIt.remove();
                }
            } catch (Exception exp) {
                customersIt.remove();
            }

        }
    }

    /**
     * {@inheritDoc}
     */
    public boolean isManageable(final Object object, final Class objectType) {
        final Set<Long> manageableShopIds = shopFederationStrategy.getAccessibleShopIdsByCurrentManager();
        try {
            final Set<ShopDTO> shops = customerService.getAssignedShop((Long) object).keySet();
            for (final ShopDTO shop : shops) {
                if (manageableShopIds.contains(shop.getShopId())) {
                    return true;
                }
            }
        } catch (Exception exp) {
            // nothing
        }
        return false;
    }

}
