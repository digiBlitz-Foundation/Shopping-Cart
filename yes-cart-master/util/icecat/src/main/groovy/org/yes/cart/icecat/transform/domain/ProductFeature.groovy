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





package org.yes.cart.icecat.transform.domain

import org.yes.cart.icecat.transform.Util

/**
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 5/9/12
 * Time: 9:55 PM
 */
 class ProductFeature {

     String Value
     Map<String,String> PresentationValue = new TreeMap<String, String>();
     Feature feature

     public String getPresentationValueFor(String lang) {
         def PresentationValue = Util.getLocalisedValue(this, "PresentationValue", lang);
         if (PresentationValue == '') {
             return Value;
         }
         return PresentationValue;
     }

}
