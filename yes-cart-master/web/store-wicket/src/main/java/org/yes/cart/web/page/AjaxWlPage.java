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

import org.apache.wicket.markup.html.basic.Label;
import org.apache.wicket.model.IModel;
import org.apache.wicket.model.Model;
import org.apache.wicket.protocol.https.RequireHttps;
import org.apache.wicket.request.mapper.parameter.PageParameters;
import org.apache.wicket.util.string.StringValue;
import org.yes.cart.shoppingcart.ShoppingCartCommand;

/**
 *
 * Ajax update for Wish List
 *
 */
@RequireHttps
public class AjaxWlPage extends AbstractWebPage {

    /**
     * Construct page.
     *
     * @param params page parameters
     */
    public AjaxWlPage(final PageParameters params) {
        super(params);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected void onBeforeRender() {

        executeHttpPostedCommands();

        final StringValue skuValue = getPageParameters().get(ShoppingCartCommand.CMD_ADDTOWISHLIST);
        final String sku = skuValue.toString();

        final StringBuilder outJson = new StringBuilder();
        outJson.append("{ \"SKU\": \"").append(sku.replace("\"", "")).append("\" }");

        addOrReplace(new Label("wlAddedObj", outJson.toString()).setEscapeModelStrings(false));
        super.onBeforeRender();

        persistCartIfNecessary();
    }

    /**
     * Get page title.
     *
     * @return page title
     */
    public IModel<String> getPageTitle() {
        return new Model<String>(getLocalizer().getString("wishlist",this));
    }


}
