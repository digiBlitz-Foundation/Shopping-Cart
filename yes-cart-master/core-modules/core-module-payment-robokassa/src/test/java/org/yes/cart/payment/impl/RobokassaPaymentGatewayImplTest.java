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

package org.yes.cart.payment.impl;

import junit.framework.TestCase;
import org.junit.Test;
import org.yes.cart.payment.dto.Payment;
import org.yes.cart.payment.dto.PaymentLine;
import org.yes.cart.payment.dto.impl.PaymentImpl;
import org.yes.cart.payment.dto.impl.PaymentLineImpl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 2/19/12
 * Time: 10:48 AM
 */
public class RobokassaPaymentGatewayImplTest extends TestCase {

    @Test
    public void testGetPostActionUrl() throws Exception {

        final RobokassaPaymentGatewayImpl robokassaPaymentGateway = new RobokassaPaymentGatewayImpl();
        assertEquals("#", robokassaPaymentGateway.getPostActionUrl());

    }

    @Test
    public void testGetHtmlForm() throws Exception {

        final RobokassaPaymentGatewayImpl robokassaPaymentGateway = new RobokassaPaymentGatewayImpl() {

            @Override
            public String getParameterValue(String valueLabel) {
                if (RB_MERCHANT_LOGIN.endsWith(valueLabel)) {
                    return "yes-login";
                } else if (RB_MERCHANT_PASS2.endsWith(valueLabel)) {
                    return "pass2";
                } else if (RB_MERCHANT_PASS.endsWith(valueLabel)) {
                    return "pass";
                } else if (RB_URL.endsWith(valueLabel)) {
                    return "http://test.robokassa.ru/Index.aspx";
                } else if (RB_ORDER_DESRIPTION.endsWith(valueLabel)) {
                    return "Payment for order ";

                }
                return "";
            }

        };

        String rez = robokassaPaymentGateway.getHtmlForm(
                null,
                "ru",
                BigDecimal.TEN,
                "USD",
                "1234-4321",
                createTesPayment()
        );

        assertEquals("<script \n" +
                "\tlanguage='javascript' \n" +
                "\ttype='text/javascript'\n" +
                "\tsrc='http://test.robokassa.ru/Index.aspx?\n" +
                "\t\tMrchLogin=yes-login&\n" +
                "\t\tOutSum=10&\n" +
                "\t\tInvId=0&\n" +
                "\t\tDesc=Payment for order  N:20121012-12&\n" +
                "\t\tSignatureValue=f484769ab62efae5514038fcb8106909&\n" +
                "\t\tCulture=ru&\n" +
                "\t\tIncCurrLabel=USD&\n" +
                "\t\tSHP_ORDER_ID=1234-4321&\n" +
                "\t\tEncoding=utf-8'>\n" +
                "</script>", rez);


    }


    private Payment createTesPayment() {

        final List<PaymentLine> orderItems = new ArrayList<PaymentLine>() {{
            add(new PaymentLineImpl("code2", "name2", BigDecimal.ONE, BigDecimal.TEN, BigDecimal.ZERO, false));
        }};


        final Payment payment = new PaymentImpl();

        payment.setOrderItems(orderItems);
        payment.setOrderCurrency("USD");
        payment.setOrderLocale("en");
        payment.setOrderNumber("20121012-12");

        return payment;

    }

}
