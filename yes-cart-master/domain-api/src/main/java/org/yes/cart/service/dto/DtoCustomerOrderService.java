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

package org.yes.cart.service.dto;

import org.yes.cart.domain.dto.CustomerOrderDTO;
import org.yes.cart.domain.dto.CustomerOrderDeliveryDTO;
import org.yes.cart.domain.dto.CustomerOrderDeliveryDetailDTO;
import org.yes.cart.domain.misc.Result;
import org.yes.cart.exception.UnableToCreateInstanceException;
import org.yes.cart.exception.UnmappedInterfaceException;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 07-May-2011
 * Time: 11:13:01
 */
public interface DtoCustomerOrderService extends GenericDTOService<CustomerOrderDTO> {

    /**
     * Confirm customer will to pay via carrie or confirm status of bank payment.
     *
     * @param orderNum             unique order number. not pk value.
     * @return result object
     */
    Result updateOrderSetConfirmed(String orderNum);

    /**
     * Cancel order. In case of order cancellation will be performed following actions:
     * <p/>
     * product quantity reservation in case of off line payment gateway will be voided.
     * product quantity in deliveries will be returned to main warehouse in case of online payments.
     * <p/>
     * reverse auth in case if no shipment was performed;
     * void capture if fund/money was captured, but not yet settled to merchant account;
     * refund in case if money were settled to merchant account.
     * <p/>
     * Please refer how works particular payment gateway, which are you using, because of some difference.
     * For more details see org.yes.cart.payment.PaymentGateway interface and his implementations.
     *
     * @param orderNum             unique order number. not pk value.
     * @return result object
     */
    Result updateOrderSetCancelled(String orderNum);

    /**
     * This is manual refund operation of cancelled orders that are "stuck"
     *
     *
     * @param orderNum             unique order number. not pk value.
     * @param message              manual operation message
     * @return result object
     */
    Result updateOrderSetCancelledManual(String orderNum, String message);


    /**
     * Update external delivery number.
     *
     * @param orderNum    unique order number. not pk value.
     * @param deliveryNum unique delivery number in order scope. not pk value.
     * @param newRefNo    new reference number
     * @return result object
     */
    Result updateExternalDeliveryRefNo(String orderNum, String deliveryNum, String newRefNo);


    /**
     * Fire transition for single delivery. This method may lead to
     * change status for whole order , not only for single delivery.
     *
     * @param orderNum          unique order number. not pk value.
     * @param deliveryNum       unique delivery number in order scope. not pk value.
     * @param currentStatus     from status
     * @param destinationStatus to status
     * @return result object
     */
    Result updateDeliveryStatus(String orderNum, String deliveryNum, String currentStatus, String destinationStatus);

    /**
     * Fire transition for single delivery. This method may lead to
     * change status for whole order , not only for single delivery.
     *
     * @param orderNum          unique order number. not pk value.
     * @param deliveryNum       unique delivery number in order scope. not pk value.
     * @param currentStatus     from status
     * @param destinationStatus to status
     * @param message           manual operation message
     * @return result object
     */
    Result updateDeliveryStatusManual(String orderNum, String deliveryNum, String currentStatus, String destinationStatus, String message);

    /**
     * Get list of delivery details for given order number.
     *
     * @param orderNum order number
     * @return list of delivery details.
     * @throws UnmappedInterfaceException in case of dto mapping error
     * @throws UnableToCreateInstanceException
     *                                    in case of dto mapping error
     */
    List<CustomerOrderDeliveryDetailDTO> findDeliveryDetailsByOrderNumber(String orderNum)
            throws UnmappedInterfaceException, UnableToCreateInstanceException;

    /**
     * Get list of <code>CustomerOrderDeliveryDTO</code> for given order number. Each delivery  will include
     * slave details objects.
     *
     * @param orderNum order number
     * @return list of deliveries.
     * @throws UnmappedInterfaceException in case of dto mapping error
     * @throws UnableToCreateInstanceException
     *                                    in case of dto mapping error
     */
    List<CustomerOrderDeliveryDTO> findDeliveryByOrderNumber(String orderNum)
            throws UnmappedInterfaceException, UnableToCreateInstanceException;

    /**
     * Get list of <code>CustomerOrderDeliveryDTO</code> for given order number. Each delivery  will include
     * slave details objects.
     *
     * @param orderNum order number
     * @param deliveryNum optional delivery number filter
     * @return list of deliveries.
     * @throws UnmappedInterfaceException in case of dto mapping error
     * @throws UnableToCreateInstanceException
     *                                    in case of dto mapping error
     */
    List<CustomerOrderDeliveryDTO> findDeliveryByOrderNumber( String orderNum, final String deliveryNum)
            throws UnmappedInterfaceException, UnableToCreateInstanceException;



    /**
     * Find customer's order by given criteria.
     *
     * @param customerId  customer id. Rest of parameters will be ignored, if customerId more that 0.
     * @param firstName   optional to perform search using like by first name
     * @param lastName    optional to perform search using like by last name
     * @param email       optional to perform search using like by email
     * @param orderStatus optional order status
     * @param fromDate    optional order created from
     * @param toDate      optional order created to
     * @param orderNum    optional to perform search using like by order number
     * @return list of customer's order dtos
     */
    List<CustomerOrderDTO> findCustomerOrdersByCriteria(
            long customerId,
            String firstName,
            String lastName,
            String email,
            String orderStatus,
            Date fromDate,
            Date toDate,
            String orderNum
    ) throws UnmappedInterfaceException, UnableToCreateInstanceException;

    /**
     * Get orders by filter.
     *
     * @param filter filter
     * @param page start page
     * @param pageSize page size
     * @return list of orders
     */
    List<CustomerOrderDTO> findBy(String filter, int page, int pageSize) throws UnmappedInterfaceException, UnableToCreateInstanceException;

    /**
     * Get orders by filter.
     *
     * @param filter filter
     * @param statuses statuses
     * @param page start page
     * @param pageSize page size
     * @return list of orders
     */
    List<CustomerOrderDTO> findBy(String filter, List<String> statuses, int page, int pageSize) throws UnmappedInterfaceException, UnableToCreateInstanceException;

    /**
     * Get localized name for all payment gateways on this server.
     *
     * @param locale locale for which to provide name
     *
     * @return pgLabel to name map
     */
    Map<String, String> getOrderPgLabels(String locale);

}
