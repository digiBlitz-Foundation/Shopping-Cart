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

package org.yes.cart.util;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.MDC;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 *
 * Hold current shop code context.
 *
 */
public class ShopCodeContext {

    private static ThreadLocal<String> shopCode = new ThreadLocal<String>();
    private static ThreadLocal<Long> shopId = new ThreadLocal<Long>();

    private static final Map<String, Logger> LOGS = new ConcurrentHashMap<String, Logger>();

    /**
     * Get current shop code.
     *
     * @return current shop code.
     */
    public static String getShopCode() {
        final String code = shopCode.get();
        if (code == null) {
            return "DEFAULT";
        }
        return code;
    }

    /**
     * Set shop code.
     *
     * @param currentShopCode shop code to set.
     */
    public static void setShopCode(final String currentShopCode) {
        shopCode.set(currentShopCode);
        MDC.put("shopCode", getShopCode());
    }

    /**
     * Get current shop Id
     *
     * @return current shop id
     */
    public static Long getShopId() {
        final Long code = shopId.get();
        if (code == null) {
            return 0L;
        }
        return code;
    }

    /**
     * Set shop Id.
     *
     * @param currentShopId shop Id to set.
     */
    public static void setShopId(final long currentShopId) {
        shopId.set(currentShopId);
    }


    /**
     * Clear thread locals at the end of the request
     */
    public static void clear() {
        shopId.set(0L);
        shopCode.set("DEFAULT");
        MDC.put("shopCode", getShopCode());
    }


}
