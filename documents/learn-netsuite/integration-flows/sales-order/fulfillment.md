---
description: >-
  Learn how fulfillment information is synchronized between NetSuite and HotWax
  Commerce, ensuring accurate order status updates and financial processing.
---

# Fulfillment

## Fulfillment in NetSuite

When the warehouse fulfillment team begins the fulfillment of the order item, an item fulfillment record is created in NetSuite. As soon as the order item is picked, packed and shipped, the item fulfillment record is marked as “Shipped” and the order status is updated from "Pending Fulfillment" to "Pending Billing".

Synchronizing shipped order items from NetSuite to HotWax Commerce ensures that the order status is consistent and updated across both systems.

<figure><img src="../../../.gitbook/assets/17.png" alt=""><figcaption><p>Fulfilled order updates synced from NetSuite to HotWax Commerce</p></figcaption></figure>

**Actions**

1. A Map Reduce SuiteScript generates a CSV file containing item fulfillment records in the Shipped status and places it at an SFTP location.

**SuiteScript**

```
HC_MR_ExportedSalesOrderFulfillmentCSV
```

**SFTP Locations**

```
/home/{sftp-username}/netsuite/salesorder/import/fulfillment
```

2. A scheduled job within HotWax Commerce Integration Platform reads and transforms this CSV file into the JSON format so that OMS can consume this file. This JSON file is then placed at an SFTP location.
3. A scheduled job within HotWax Commerce OMS reads this JSON file from the SFTP location, marking order items as fulfilled in HotWax Commerce.

**Job in HotWax Commerce**

```
Order Item Fulfillment
FTP Config: IMP_ODR_ITM_FLFLMNT
```

* [x] Sync order item fulfillment details from NetSuite to HotWax

## Fulfillment in HotWax

The primary difference in this context is the approach to sending fulfillment location data from HotWax Commerce to NetSuite.

While fulfillment locations are indeed transmitted to NetSuite after in-store orders are fulfilled within HotWax Commerce, it's important to understand that this data transmission isn't critical for the actual fulfillment of orders. The fulfillment location data is conveyed to NetSuite once orders are fulfilled in HotWax Commerce. Its significance lies in updating order status in NetSuite, subsequent creation of invoices and the application of payments to these invoices. This step occurs post-fulfillment in HotWax Commerce to ensure proper financial processing and completion of orders in NetSuite.

<figure><img src="../../../.gitbook/assets/18.png" alt=""><figcaption><p>Fulfillment location data and order updates synced from HotWax Commerce to NetSuite</p></figcaption></figure>

**Actions**

1. A scheduled job in HotWax Commerce Integration Platform retrieves fulfilled order items and creates a feed of outbound shipments as a JSON file and places it at an SFTP location.

_to be added_

2. A Scheduled Script in NetSuite reads this JSON file from the SFTP location, allocating locations to the orders in NetSuite by updating order records. Additionally, it creates fulfillment records in Shipped status in NetSuite based on the HotWax Commerce shipment data using the N/Record module of NetSuite.

**SuiteScript**

```
HC_SC_CreateItemFulfillment
```

**SFTP Locations**

```
/home/{sftp-username}/netsuite/fulfilledsalesorder/export
```

Upon completion of this process, the orders transition from "Pending Fulfillment" to "Pending Billing" status, signifying that they are fulfilled and ready for billing.

{% hint style="info" %}
The `HC_SC_CreateItemFulfillment` SuiteScript also generates a CSV file highlighting erroneous records found during processing and uploads the file to the SFTP server. Simultaneously, an email alert is automatically triggered to designated personnel, helping them quickly pinpoint the source of the issue and accelerating troubleshooting.
{% endhint %}

* [x] Sync order item fulfillment details from HotWax to NetSuite

{% file src="../../../.gitbook/assets/Fulfilled Order Items Sample Feed.txt" %}

**Overall sync progress**

Order fulfillment is completed and now the only step remaining is invoicing.

* [x] Sync new orders from HotWax to NetSuite
  * [x] Sync customers
  * [x] Sync order line items
  * [x] Sync order ids
  * [x] Create customer deposit
* [x] Approve order in HotWax for fulfillment
* [x] HotWax brokering allocates orders
* [x] Sync item allocation to NetSuite for facilities where NetSuite fulfillment is used
* [x] Sync order item fulfillment details from NetSuite to HotWax
* [x] Sync order item fulfillment details from HotWax to NetSuite
* [ ] Invoice orders in NetSuite
