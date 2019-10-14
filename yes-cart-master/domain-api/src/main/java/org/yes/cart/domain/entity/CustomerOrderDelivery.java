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

package org.yes.cart.domain.entity;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;

/**
 * The Order Delivery. Each order has one or more deliveries.
 * Delivery/Shipment split possible when not all sku's present on warehouse
 * and sku's have different availability (pre/back order, etc.), also
 * some products can not be shipped together, because of security.
 * Delivery address can be taken from order.
 * <p/>
 * User: Igor Azarny iazarny@yahoo.com
 * Date: 07-May-2011
 * Time: 11:12:54
 */
public interface CustomerOrderDelivery extends Auditable {


    /**
     * On fulfilment center.
     */
    String DELIVERY_STATUS_ON_FULLFILMENT = "ds.fullfillment";

    /**
     * Wait for allocation. Use for standard.
     */
    String DELIVERY_STATUS_ALLOCATION_WAIT = "ds.wait.allocation";

    /**
     * Wait for particular date. Use for preorder.
     */
    String DELIVERY_STATUS_DATE_WAIT = "ds.wait.date";

    /**
     * Wait for inventory. Used for backorder.
     */
    String DELIVERY_STATUS_INVENTORY_WAIT = "ds.wait.inventory";


    /**
     * Inventory reserved
     */
    String DELIVERY_STATUS_INVENTORY_RESERVED = "ds.inventory.reserved";

    /**
     * Void reservation reserved
     */
    String DELIVERY_STATUS_INVENTORY_VOID_RESERVATION = "ds.inventory.void.reserv";

    /**
     * Void preorder
     */
    String DELIVERY_STATUS_INVENTORY_VOID_WAIT = "ds.inventory.void.wait";


    /**     * Inventory allocated
     */
    String DELIVERY_STATUS_INVENTORY_ALLOCATED = "ds.inventory.allocated";

    /**
     * Inventory deallocated
     */
    String DELIVERY_STATUS_INVENTORY_DEALLOCATED = "ds.inventory.deallocated";

    /**
     * Inventory returned
     */
    String DELIVERY_STATUS_INVENTORY_RETURNED = "ds.inventory.returned";

    /**
     * Order is packing
     */
    String DELIVERY_STATUS_PACKING = "ds.packing";

    /**
     * Wait for shipment.
     */
    String DELIVERY_STATUS_SHIPMENT_READY = "ds.shipment.ready";

    /**
     * Wait for shipment (online CAPTURE failed).
     */
    String DELIVERY_STATUS_SHIPMENT_READY_WAITING_PAYMENT = "ds.shipment.ready.waiting.payment";

    /**
     * Delivery in progress.
     */
    String DELIVERY_STATUS_SHIPMENT_IN_PROGRESS = "ds.shipment.inprogress";

    /**
     * Delivery in progress (offline CAPTURE pending).
     */
    String DELIVERY_STATUS_SHIPMENT_IN_PROGRESS_WAITING_PAYMENT = "ds.shipment.inprogress.waiting.payment";

    /**
     * Delivered.
     */
    String DELIVERY_STATUS_SHIPPED = "ds.shipped";


    /**
     * Can be delivered.
     */
    String STANDARD_DELIVERY_GROUP = "D1";
    /**
     * Need wait for date.
     */
    String DATE_WAIT_DELIVERY_GROUP = "D2";
    /**
     * Need wait for inventory.
     */
    String INVENTORY_WAIT_DELIVERY_GROUP = "D3";
    /**
     * Electronic delivery.
     */
    String ELECTRONIC_DELIVERY_GROUP = "D4";

    /**
     * Mixed physical delivery group.
     */
    String MIX_DELIVERY_GROUP = "D5";

    /**
     * Out of stock.
     */
    String NOSTOCK_DELIVERY_GROUP = "OOS";

    /**
     * Product offline.
     */
    String OFFLINE_DELIVERY_GROUP = "OFF";

    /**
     * Shipment pk.
     *
     * @return pk value
     */
    long getCustomerOrderDeliveryId();

    /**
     * Set pk value.
     *
     * @param customerOrderDeliveryId pk value.
     */
    void setCustomerOrderDeliveryId(long customerOrderDeliveryId);

    /**
     * Get delivery number.
     *
     * @return delivery number
     */
    String getDeliveryNum();

    /**
     * Set delivery number
     *
     * @param deliveryNum delivery number
     */
    void setDeliveryNum(String deliveryNum);

    /**
     * Get external delivery number, if any.
     *
     * @return external delivery number
     */
    String getRefNo();

    /**
     * Set external delivery number.
     *
     * @param refNo external delivery number, if any.
     */
    void setRefNo(String refNo);

    /**
     * Get actual delivery price after all promotions applied.
     *
     * @return delivery price.
     */
    BigDecimal getPrice();

    /**
     * Set actual delivery price after all promotions applied.
     *
     * @param price delivery price.
     */
    void setPrice(BigDecimal price);

    /**
     * Get the sku sale price including all promotions.
     *
     * @return after tax price
     */
    BigDecimal getNetPrice();

    /**
     * Set net price (price before tax).
     *
     * @param netPrice price before tax
     */
    void setNetPrice(final BigDecimal netPrice);

    /**
     * Get the sku sale price including all promotions.
     *
     * @return before tax price
     */
    BigDecimal getGrossPrice();

    /**
     * Set net price (price after tax).
     *
     * @param grossPrice price after tax
     */
    void setGrossPrice(final BigDecimal grossPrice);

    /**
     * Get tax code used for this item.
     *
     * @return tax code
     */
    String getTaxCode();

    /**
     * Set tax code reference.
     *
     * @param taxCode tax code
     */
    void setTaxCode(final String taxCode);

    /**
     * Get tax rate for this item.
     *
     * @return tax rate 0-99
     */
    BigDecimal getTaxRate();

    /**
     * Set tax rate used (0-99).
     *
     * @param taxRate tax rate
     */
    void setTaxRate(final BigDecimal taxRate);

    /**
     * Tax exclusive of price flag.
     *
     * @return true if exclusive, false if inclusive
     */
    boolean isTaxExclusiveOfPrice();

    /**
     * Set whether this tax is included or excluded from price.
     *
     * @param taxExclusiveOfPrice tax flag
     */
    void setTaxExclusiveOfPrice(final boolean taxExclusiveOfPrice);

    /**
     * Set delivery list price (i.e. cost of delivery as per carrier SLA price).
     *
     * @return delivery list cost
     */
    BigDecimal getListPrice();

    /**
     * Set delivery list price (i.e. cost of delivery as per carrier SLA price).
     *
     * @param listPrice delivery list cost.
     */
    void setListPrice(BigDecimal listPrice);

    /**
     * Returns true if promotions have been applied to this
     * item.
     *
     * @return true if promotions have been applied
     */
    boolean isPromoApplied();

    /**
     * @param promoApplied set promotion applied flag
     */
    void setPromoApplied(boolean promoApplied);

    /**
     * Comma separated list of promotion codes that have been applied
     * for this cart item.
     *
     * @return comma separated promo codes
     */
    String getAppliedPromo();

    /**
     * @param appliedPromo comma separated promo codes
     */
    void setAppliedPromo(String appliedPromo);

    /**
     * Get order delivery status
     *
     * @return order delivery status
     */
    String getDeliveryStatus();

    /**
     * Set order delivery status
     *
     * @param deliveryStatus order delivery status
     */
    void setDeliveryStatus(String deliveryStatus);

    /**
     * Delivery remarks (could be used for third party integrations or in JAM)
     *
     * @return remarks
     */
    String getDeliveryRemarks();

    /**
     * Delivery remarks (could be used for third party integrations or in JAM)
     *
     * @param deliveryRemarks remarks
     */
    void setDeliveryRemarks(String deliveryRemarks);

    /**
     * Earliest date the delivery is estimated for.
     *
     * @return estimated date
     */
    Date getDeliveryEstimatedMin();

    /**
     * Earliest date the delivery is estimated for.
     *
     * @param deliveryEstimatedMin estimated date
     */
    void setDeliveryEstimatedMin(Date deliveryEstimatedMin);

    /**
     * Latest date the delivery is estimated for.
     *
     * @return estimated date
     */
    Date getDeliveryEstimatedMax();

    /**
     * Latest date the delivery is estimated for.
     *
     * @param deliveryEstimatedMax estimated date
     */
    void setDeliveryEstimatedMax(Date deliveryEstimatedMax);

    /**
     * Guaranteed delivery date.
     *
     * @return guaranteed date
     */
    Date getDeliveryGuaranteed();

    /**
     * Guaranteed delivery date.
     *
     * @param deliveryGuaranteed guaranteed date
     */
    void setDeliveryGuaranteed(Date deliveryGuaranteed);

    /**
     * Guaranteed delivery date. This date should be populated from the third party integrations and denoted
     * actual confirmed date of delivery. If this is field is null it only means that there is not confirmation
     * by the delivery company that the items is delivered, it does not mean that it has not been delivered.
     *
     * @return guaranteed date
     */
    Date getDeliveryConfirmed();

    /**
     * Actual confirmed delivery date.
     *
     * @param delivered confirmed delivery date
     */
    void setDeliveryConfirmed(Date delivered);


    /**
     * Requested delivery date by customer.
     *
     * @return requested delivery date
     */
    Date getRequestedDeliveryDate();

    /**
     * Requested delivery date by customer
     *
     * @param requestedDeliveryDate requested delivery date
     */
    void setRequestedDeliveryDate(Date requestedDeliveryDate);


    /**
     * Flag for export management control.
     *
     * @return type of order export applicable for this order
     */
    String getEligibleForExport();

    /**
     * Flag for export management control.
     *
     * @param eligibleForExport type of order export applicable for this order
     */
    void setEligibleForExport(String eligibleForExport);


    /**
     * Flag for better export management control (e.g. hold off export until fraud check is performed).
     *
     * @return true if export is blocked
     */
    boolean isBlockExport();

    /**
     * Flag for better export management control (e.g. hold off export until fraud check is performed).
     *
     * @param blockExport true if export is blocked
     */
    void setBlockExport(boolean blockExport);

    /**
     * Timestamp of last attempted export.
     *
     * @return timestamp
     */
    Date getLastExportDate();

    /**
     * Timestamp of last attempted export.
     *
     * @param lastExportDate timestamp
     */
    void setLastExportDate(Date lastExportDate);

    /**
     * Last export status. Could be any update from third party system (e.g. validation error).
     * Empty denotes success.
     *
     * @return status
     */
    String getLastExportStatus();

    /**
     * Last export status. Could be any update from third party system (e.g. validation error).
     * Empty denotes success.
     *
     * @param lastExportStatus status
     */
    void setLastExportStatus(String lastExportStatus);

    /**
     * Delivery status that was sent with last export.
     *
     * @return status
     */
    String getLastExportDeliveryStatus();

    /**
     * Delivery status that was sent with last export.
     *
     * @param lastExportDeliveryStatus status
     */
    void setLastExportDeliveryStatus(String lastExportDeliveryStatus);


    /**
     * Get delivery items.
     *
     * @return delivery items.
     */
    Collection<CustomerOrderDeliveryDet> getDetail();

    /**
     * Set delivery items.
     *
     * @param detail delivery items.
     */
    void setDetail(Collection<CustomerOrderDeliveryDet> detail);

    /**
     * Get delivery SLA.
     *
     * @return delivery SLA.
     */
    CarrierSla getCarrierSla();

    /**
     * Set delivery SLA.
     *
     * @param carrierSla delivery SLA.
     */
    void setCarrierSla(CarrierSla carrierSla);

    /**
     * GEt customer order.
     *
     * @return order.
     */
    CustomerOrder getCustomerOrder();

    /**
     * Set customer order.
     *
     * @param customerOrder customer order.
     */
    void setCustomerOrder(CustomerOrder customerOrder);


    /**
     * Get delivery group (type).
     *
     * @return delivery group.
     */
    String getDeliveryGroup();

    /**
     * Set Delivery group.
     *
     * @param deliveryGroup delivery group.
     */
    void setDeliveryGroup(String deliveryGroup);


}