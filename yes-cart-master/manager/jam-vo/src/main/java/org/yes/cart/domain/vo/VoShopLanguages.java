/*
 * Copyright 2009 - 2016 Denys Pavlov, Igor Azarnyi
 *
 *    Licensed under the Apache License, Version 2.0 (the 'License');
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an 'AS IS' BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */
package org.yes.cart.domain.vo;

import org.yes.cart.domain.misc.MutablePair;

import java.util.List;

/**
 * Created by Igor_Azarny on 4/12/2016.
 */
public class VoShopLanguages {

    private long shopId;

    private List<String> supported;

    private List<MutablePair<String, String>>  all;

    public long getShopId() {
        return shopId;
    }

    public void setShopId(long shopId) {
        this.shopId = shopId;
    }

    public List<String> getSupported() {
        return supported;
    }

    public void setSupported(List<String> supported) {
        this.supported = supported;
    }

    public List<MutablePair<String, String>> getAll() {
        return all;
    }

    public void setAll(List<MutablePair<String, String>> all) {
        this.all = all;
    }
}
