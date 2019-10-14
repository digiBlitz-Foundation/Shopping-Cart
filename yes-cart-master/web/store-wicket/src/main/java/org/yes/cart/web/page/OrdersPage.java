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

import org.apache.wicket.Application;
import org.apache.wicket.authroles.authentication.AuthenticatedWebSession;
import org.apache.wicket.authroles.authorization.strategies.role.annotations.AuthorizeInstantiation;
import org.apache.wicket.markup.html.panel.FeedbackPanel;
import org.apache.wicket.model.IModel;
import org.apache.wicket.model.Model;
import org.apache.wicket.protocol.https.RequireHttps;
import org.apache.wicket.request.mapper.parameter.PageParameters;
import org.apache.wicket.spring.injection.annot.SpringBean;
import org.springframework.util.StringUtils;
import org.yes.cart.domain.entity.Customer;
import org.yes.cart.shoppingcart.ShoppingCart;
import org.yes.cart.shoppingcart.ShoppingCartCommand;
import org.yes.cart.web.page.component.customer.order.CustomerOrderPanel;
import org.yes.cart.web.page.component.footer.StandardFooter;
import org.yes.cart.web.page.component.header.HeaderMetaInclude;
import org.yes.cart.web.page.component.header.StandardHeader;
import org.yes.cart.web.page.component.js.ServerSideJs;
import org.yes.cart.web.support.constants.StorefrontServiceSpringKeys;
import org.yes.cart.web.support.service.CustomerServiceFacade;

/**
 *
 * Customer self care page to view orders, wish list, etc.
 *
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 10/11/11
 * Time: 9:51 PM
 */
@RequireHttps
@AuthorizeInstantiation("USER")
public class OrdersPage extends AbstractWebPage {

    // ------------------------------------- MARKUP IDs BEGIN ---------------------------------- //
    private final static String ORDERS_PANEL = "ordersView";
    // ------------------------------------- MARKUP IDs END ---------------------------------- //

    @SpringBean(name = StorefrontServiceSpringKeys.CUSTOMER_SERVICE_FACADE)
    private CustomerServiceFacade customerServiceFacade;


    /**
     * Construct page.
     *
     * @param params page parameters
     */
    public OrdersPage(final PageParameters params) {
        super(params);

        final String email = getCurrentCart().getCustomerEmail();
        final Customer customer;
        if (StringUtils.hasLength(email)) {
            customer = customerServiceFacade.getCustomerByEmail(getCurrentShop(), email);
        } else {
            customer = null;
            // Redirect away from profile!
            final PageParameters rparams = new PageParameters();
            rparams.set(ShoppingCartCommand.CMD_LOGOUT, ShoppingCartCommand.CMD_LOGOUT);
            setResponsePage(Application.get().getHomePage(), rparams);
        }

        final Model<Customer> customerModel = new Model<Customer>(customer);

        add(new FeedbackPanel(FEEDBACK));
        add(new CustomerOrderPanel(ORDERS_PANEL, customerModel));
        add(new StandardFooter(FOOTER));
        add(new StandardHeader(HEADER));
        add(new ServerSideJs("serverSideJs"));
        add(new HeaderMetaInclude("headerInclude"));

    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected void onBeforeRender() {

        final ShoppingCart cart = getCurrentCart();

        if ((!((AuthenticatedWebSession) getSession()).isSignedIn()
                || cart.getLogonState() != ShoppingCart.LOGGED_IN)) {
            final PageParameters params = new PageParameters();
            params.set(ShoppingCartCommand.CMD_LOGOUT, ShoppingCartCommand.CMD_LOGOUT);
            setResponsePage(Application.get().getHomePage(), params);
        }

        executeHttpPostedCommands();
        super.onBeforeRender();
        persistCartIfNecessary();
    }

    /**
     * Get page title.
     *
     * @return page title
     */
    public IModel<String> getPageTitle() {
        return new Model<String>(getLocalizer().getString("ordersSummary",this));
    }


}
