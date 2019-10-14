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

package org.yes.cart.web.page;

import org.apache.wicket.RestartResponseException;
import org.apache.wicket.markup.html.panel.FeedbackPanel;
import org.apache.wicket.model.IModel;
import org.apache.wicket.model.Model;
import org.apache.wicket.request.mapper.parameter.PageParameters;
import org.apache.wicket.util.string.StringValue;
import org.apache.wicket.util.value.ValueMap;
import org.yes.cart.shoppingcart.ShoppingCart;
import org.yes.cart.shoppingcart.ShoppingCartCommand;
import org.yes.cart.web.page.component.cart.ShoppingCartView;
import org.yes.cart.web.page.component.customer.wishlist.WishListNotification;
import org.yes.cart.web.page.component.footer.StandardFooter;
import org.yes.cart.web.page.component.header.HeaderMetaInclude;
import org.yes.cart.web.page.component.header.StandardHeader;
import org.yes.cart.web.page.component.js.ServerSideJs;

import java.util.Collections;
import java.util.Map;

/**
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 10/8/11
 * Time: 9:27 PM
 */
public class ShoppingCartPage extends AbstractWebPage {

    // ------------------------------------- MARKUP IDs BEGIN ---------------------------------- //
    private final static String CART_VIEW = "shoppingCartView";
    // ------------------------------------- MARKUP IDs END ---------------------------------- //


    /**
     * Construct page.
     *
     * @param params page parameters
     */
    public ShoppingCartPage(final PageParameters params) {
        super(params);

    }

    @Override
    protected void onBeforeRender() {

        executeHttpPostedCommands();

        addOrReplace(
                new FeedbackPanel(FEEDBACK)
        ).addOrReplace(
                new ShoppingCartView(CART_VIEW)
        ).addOrReplace(
                new StandardFooter(FOOTER)
        ).addOrReplace(
                new StandardHeader(HEADER)
        ).addOrReplace(
                new ServerSideJs("serverSideJs")
        ).addOrReplace(
                new HeaderMetaInclude("headerInclude")
        );

        final PageParameters params = getPageParameters();
        final StringValue checkoutError = params.get("e");
        if (!checkoutError.isEmpty()) {

            if ("ec".equals(checkoutError.toString())) {
                warn(getLocalizer().getString("orderErrorCouponInvalid", this,
                        new Model<ValueMap>(new ValueMap(Collections.singletonMap("coupon", params.get("ec").toString())))));
            } else if ("es".equals(checkoutError.toString())) {
                warn(getLocalizer().getString("orderErrorSkuInvalid", this,
                        new Model<ValueMap>(new ValueMap(Collections.singletonMap("sku", params.get("es").toString())))));
            } else {
                error(getLocalizer().getString("orderErrorGeneral", this));
            }

        }

        final ShoppingCart cart = getCurrentCart();
        if (cart.getCartItemsCount() == 0) {
            info(getLocalizer().getString("emptyCart", this));
        }

        addOrReplace(new WishListNotification("wishListNotification"));

        super.onBeforeRender();

        final boolean cartModified = cart.isModified();

        if (!cartModified && cart.getCartItemsCount() > 0) {
            // Refresh prices on cart view
            getShoppingCartCommandFactory().execute(ShoppingCartCommand.CMD_RECALCULATEPRICE,
                    cart,
                    (Map) Collections.singletonMap(ShoppingCartCommand.CMD_RECALCULATEPRICE, ShoppingCartCommand.CMD_RECALCULATEPRICE));
        }

        persistCartIfNecessary();

        if (cartModified) {
            // redirect to clear all command parameters
            throw new RestartResponseException(ShoppingCartPage.class);
        }
    }


    /**
     * Get page title.
     *
     * @return page title
     */
    public IModel<String> getPageTitle() {
        return new Model<String>(getLocalizer().getString("shoppingCart", this));
    }


}
