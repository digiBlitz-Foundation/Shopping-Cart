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

package org.yes.cart.web.service.ws.impl;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.yes.cart.dao.GenericDAO;
import org.yes.cart.domain.entity.Product;
import org.yes.cart.service.domain.ProductService;
import org.yes.cart.utils.impl.ObjectUtil;
import org.yes.cart.web.service.ws.BackdoorService;

import java.util.Collections;
import java.util.List;

/**
 * User: denispavlov
 * Date: 7/10/13
 * Time: 10:52 PM
 */
public class LocalBackdoorServiceImpl implements BackdoorService {

    private static final long serialVersionUID = 20130820L;

    private static final Logger LOG = LoggerFactory.getLogger(LocalBackdoorServiceImpl.class);

    private ProductService productService;

    /**
     * {@inheritDoc}
     */
    @Override
    public boolean ping() {
        return true;
    }

    /**
     * {@inheritDoc}
     */
    public void warmUp() {
        throw new UnsupportedOperationException("ADMIN does nto support product warm up");
    }

    /**
     * {@inheritDoc}
     */
    public Object[] getProductReindexingState() {
        throw new UnsupportedOperationException("ADMIN does nto support product index");
    }

    /**
     * {@inheritDoc}
     */
    public Object[] getProductSkuReindexingState() {
        throw new UnsupportedOperationException("ADMIN does nto support product index");
    }

    /**
     * {@inheritDoc}
     */
    public void reindexAllProducts() {
        throw new UnsupportedOperationException("ADMIN does nto support product index");
    }

    /**
     * {@inheritDoc}
     */
    public void reindexAllProductsSku() {
        throw new UnsupportedOperationException("ADMIN does nto support product index");
    }

    /**
     * {@inheritDoc}
     */
    public void reindexShopProducts(final long shopPk) {
        throw new UnsupportedOperationException("ADMIN does nto support product index");
    }

    /**
     * {@inheritDoc}
     */
    public void reindexShopProductsSku(final long shopPk) {
        throw new UnsupportedOperationException("ADMIN does nto support product index");
    }

    /**
     * {@inheritDoc}
     */
    public void reindexProduct(final long productPk) {
        throw new UnsupportedOperationException("ADMIN does nto support product index");
    }

    /**
     * {@inheritDoc}
     */
    public void reindexProductSku(final long productPk) {
        throw new UnsupportedOperationException("ADMIN does nto support product index");
    }

    /**
     * {@inheritDoc}
     */
    public void reindexProductSkuCode(final String productCode) {
        throw new UnsupportedOperationException("ADMIN does nto support product index");
    }

    /**
     * {@inheritDoc}
     */
    public void reindexProducts(final long[] productPks) {
        throw new UnsupportedOperationException("ADMIN does nto support product index");
    }

    /**
     * {@inheritDoc}
     */
    public List<Object[]> sqlQuery(final String query) {

        try {

            if (StringUtils.isNotBlank(query)) {

                if (query.toLowerCase().contains("select ")) {

                    return ObjectUtil.transformTypedResultListToArrayList(getGenericDao().executeNativeQuery(query));

                } else {

                    return Collections.singletonList(ObjectUtil.escapeXml(getGenericDao().executeNativeUpdate(query)));

                }
            }

            return Collections.EMPTY_LIST;

        } catch (Exception e) {
            final String msg = "Cant parse query : " + query + " Error : " + e.getMessage();
            LOG.warn(msg);
            return Collections.singletonList(new Object[]{msg});
        }

    }


    /**
     * {@inheritDoc}
     */
    public List<Object[]> hsqlQuery(final String query) {
        try {

            if (StringUtils.isNotBlank(query)) {

                if (query.toLowerCase().contains("select ")) {

                    final List queryRez = getGenericDao().executeHsqlQuery(query);
                    return ObjectUtil.transformTypedResultListToArrayList(queryRez);

                } else {
                    return ObjectUtil.transformTypedResultListToArrayList(getGenericDao().executeHsqlQuery(query));
                }
            }
            return Collections.EMPTY_LIST;
        } catch (Exception e) {
            final String msg = "Cant parse query : " + query + " Error : " + e.getMessage();
            LOG.warn(msg);
            return Collections.singletonList(new Object[]{msg});
        }

    }


    /**
     * {@inheritDoc}
     */
    public List<Object[]> luceneQuery(final String luceneQuery) {
        throw new UnsupportedOperationException("ADMIN does nto support product index");
    }

    /**
     * IoC. Set product service.
     *
     * @param productService product service to use.
     */
    public void setProductService(final ProductService productService) {
        this.productService = productService;
    }

    @SuppressWarnings("unchecked")
    private GenericDAO<Product, Long> getGenericDao() {
        return productService.getGenericDao();
    }

}
