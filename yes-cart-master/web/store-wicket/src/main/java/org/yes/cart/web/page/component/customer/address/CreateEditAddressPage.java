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

package org.yes.cart.web.page.component.customer.address;

import org.apache.wicket.Page;
import org.apache.wicket.markup.html.panel.FeedbackPanel;
import org.apache.wicket.model.IModel;
import org.apache.wicket.model.Model;
import org.apache.wicket.request.mapper.parameter.PageParameters;
import org.apache.wicket.spring.injection.annot.SpringBean;
import org.yes.cart.domain.entity.Address;
import org.yes.cart.domain.entity.Customer;
import org.yes.cart.domain.entity.Shop;
import org.yes.cart.domain.misc.Pair;
import org.yes.cart.shoppingcart.ShoppingCart;
import org.yes.cart.web.page.AbstractWebPage;
import org.yes.cart.web.page.component.footer.CheckoutFooter;
import org.yes.cart.web.page.component.footer.StandardFooter;
import org.yes.cart.web.page.component.header.CheckoutHeader;
import org.yes.cart.web.page.component.header.HeaderMetaInclude;
import org.yes.cart.web.page.component.header.StandardHeader;
import org.yes.cart.web.page.component.js.ServerSideJs;
import org.yes.cart.web.support.constants.StorefrontServiceSpringKeys;
import org.yes.cart.web.support.constants.WebParametersKeys;
import org.yes.cart.web.support.service.AddressBookFacade;
import org.yes.cart.web.support.service.CustomerServiceFacade;
import org.yes.cart.web.theme.WicketPagesMounter;

/**
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 10/16/11
 * Time: 1:00 PM
 */
public class CreateEditAddressPage extends AbstractWebPage {

    public final static String RETURN_TO_SELFCARE = "profile";
    public final static String RETURN_TO_CHECKOUT = "checkout";

    // ------------------------------------- MARKUP IDs BEGIN ---------------------------------- //
    private final static String ADDRESS_FORM = "addressForm";
    // ------------------------------------- MARKUP IDs BEGIN ---------------------------------- //


    @SpringBean(name = StorefrontServiceSpringKeys.CUSTOMER_SERVICE_FACADE)
    private CustomerServiceFacade customerServiceFacade;

    @SpringBean(name = StorefrontServiceSpringKeys.ADDRESS_BOOK_FACADE)
    private AddressBookFacade addressBookFacade;

    @SpringBean(name = StorefrontServiceSpringKeys.WICKET_PAGES_MOUNTER)
    private WicketPagesMounter wicketPagesMounter;

    /**
     * Construct page to create / edit customer address.
     * Created address will be treated as default  shipping or billing address.
     *
     * @param params page parameters
     */
    public CreateEditAddressPage(final PageParameters params) {

        super(params);

        final ShoppingCart cart = getCurrentCart();
        final Shop shop = getCurrentShop();

        final boolean isCheckout = !RETURN_TO_SELFCARE.equals(params.get(WebParametersKeys.ADDRESS_FORM_RETURN_LABEL).toString());

        final Customer customer =
                isCheckout ?
                        customerServiceFacade.getCheckoutCustomer(shop, cart) :
                        customerServiceFacade.getCustomerByEmail(shop, cart.getCustomerEmail());

        final String addrId = params.get(WebParametersKeys.ADDRESS_ID).toString();

        final String addrType = params.get(WebParametersKeys.ADDRESS_TYPE).toString();

        final Address address = addressBookFacade.getAddress(customer, getCurrentCustomerShop(), addrId, addrType);

        final Pair<Class<? extends Page>, PageParameters> successTarget = determineSuccessTarget(isCheckout, customer);
        final Pair<Class<? extends Page>, PageParameters> cancelTarget = determineCancelTarget(isCheckout, customer);

        add(
                new FeedbackPanel(FEEDBACK)
        );

        if (isCheckout) {
            add(new CheckoutHeader(HEADER));
            add(new CheckoutFooter(FOOTER));
        } else {
            add(new StandardHeader(HEADER));
            add(new StandardFooter(FOOTER));
        }

        add(
                new AddressForm(
                        ADDRESS_FORM,
                        new Model<Address>(address),
                        addrType,
                        successTarget.getFirst(),
                        successTarget.getSecond(),
                        cancelTarget.getFirst(),
                        cancelTarget.getSecond()
                )
        );

        add(
                new ServerSideJs("serverSideJs")
        );

        add(
                new HeaderMetaInclude("headerInclude")
        );
    }


    /**
     * Extension hook to override classes for themes.
     *
     * @param isCheckout where this is checkout registration
     * @param customer current customer
     *
     * @return redirect target
     */
    protected Pair<Class<? extends Page>, PageParameters> determineSuccessTarget(boolean isCheckout, final Customer customer) {

        final Class<? extends Page> successfulPage;
        final PageParameters parameters = new PageParameters();

        if (isCheckout) {
            if (customer.isGuest()) {
                parameters.set("guest", "1");
            }
            successfulPage = (Class) wicketPagesMounter.getPageProviderByUri("/checkout").get();
        } else {
            successfulPage = (Class) wicketPagesMounter.getPageProviderByUri("/profile").get();
        }
        return new Pair<Class<? extends Page>, PageParameters>(successfulPage, parameters);
    }


    /**
     * Extension hook to override classes for themes.
     *
     * @param isCheckout where this is checkout registration
     * @param customer current customer
     *
     * @return redirect target
     */
    protected Pair<Class<? extends Page>, PageParameters> determineCancelTarget(boolean isCheckout, final Customer customer) {

        return determineSuccessTarget(isCheckout, customer);

    }


    @Override
    protected void onBeforeRender() {
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
        return new Model<String>(getLocalizer().getString("createEditAddress",this));
    }



}
