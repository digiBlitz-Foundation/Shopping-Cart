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

package org.yes.cart.shoppingcart.impl;

import org.yes.cart.shoppingcart.MutableShoppingCart;
import org.yes.cart.shoppingcart.ShoppingCartCommand;
import org.yes.cart.shoppingcart.ShoppingCartCommandRegistry;

import java.util.Map;

/**
 * User: denis
 */
public class SetTaxOptionsCartCommandImpl extends AbstractCartCommandImpl implements ShoppingCartCommand {

    private static final long serialVersionUID = 20170109L;

    /**
     * Construct command.
     *
     * @param registry shopping cart command registry
     */
    public SetTaxOptionsCartCommandImpl(final ShoppingCartCommandRegistry registry) {
        super(registry);
    }

    /**
     * @return command key
     */
    public String getCmdKey() {
        return CMD_SETTAXOPTIONS;
    }

    /** {@inheritDoc} */
    @Override
    public void execute(final MutableShoppingCart shoppingCart, final Map<String, Object> parameters) {
        if (parameters.containsKey(getCmdKey())) {
            final Boolean show = Boolean.valueOf(String.valueOf(parameters.get(getCmdKey())));
            final Boolean net = parameters.containsKey(ShoppingCartCommand.CMD_SETTAXOPTIONS_P_NET) ?
                    Boolean.valueOf(String.valueOf(parameters.get(ShoppingCartCommand.CMD_SETTAXOPTIONS_P_NET))) : null;
            final Boolean amount = parameters.containsKey(ShoppingCartCommand.CMD_SETTAXOPTIONS_P_AMOUNT) ?
                    Boolean.valueOf(String.valueOf(parameters.get(ShoppingCartCommand.CMD_SETTAXOPTIONS_P_AMOUNT))) : null;
            if ((show != null && !show.equals(shoppingCart.getShoppingContext().isTaxInfoEnabled())) ||
                    (net != null && !net.equals(shoppingCart.getShoppingContext().isTaxInfoUseNet())) ||
                    (amount != null && !amount.equals(shoppingCart.getShoppingContext().isTaxInfoShowAmount()))) {

                setTaxOptions(shoppingCart, show, net, amount);
                markDirty(shoppingCart);
            }
        }
    }

}
