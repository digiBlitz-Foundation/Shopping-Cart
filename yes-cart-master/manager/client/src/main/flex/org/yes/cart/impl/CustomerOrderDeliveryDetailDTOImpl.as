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

package org.yes.cart.impl {


[Bindable]
[RemoteClass(alias="org.yes.cart.domain.dto.impl.CustomerOrderDeliveryDetailDTOImpl")]
public class CustomerOrderDeliveryDetailDTOImpl {

    public var customerOrderDeliveryDetId:Number;

    public var skuCode:String;

    public var skuName:String;

    public var qty:Number;

    public var price:Number;

    public var listPrice:Number;
    public var salePrice:Number;

    public var netPrice:Number;
    public var grossPrice:Number;
    public var taxRate:Number;
    public var taxExclusiveOfPrice:Boolean;
    public var taxCode:String;

    public var gift:Boolean;

    public var promoApplied:Boolean;

    public var appliedPromo:String;

    public var lineTotal:Number;

    public var deliveryNum:String;

    public var deliveryStatusLabel:String;

    public function CustomerOrderDeliveryDetailDTOImpl() {
    }


    public function toString():String {
        return "CustomerOrderDeliveryDetailDTOImpl{customerOrderDeliveryDetId=" + String(customerOrderDeliveryDetId)
                + ",skuCode=" + String(skuCode)
                + ",qty=" + String(qty)
                + ",price=" + String(price)
                + ",netPrice=" + String(netPrice)
                + ",grossPrice=" + String(grossPrice)
                + ",listPrice=" + String(listPrice)
                + ",lineTotal=" + String(lineTotal)
                + ",deliveryNum=" + String(deliveryNum)
                + ",deliveryStatusLabel=" + String(deliveryStatusLabel) + "}";
    }
}


}
