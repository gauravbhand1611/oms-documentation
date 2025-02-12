---
description: >-
  Discover how to troubleshoot missing product linking issues between HotWax
  Commerce and Shopify for enabling pre-order options and seamless product
  synchronization.
---

# Missing Product Linking

## Challenge

Despite having 0 inventory in both HotWax Commerce and the Shopify store, the pre-order option is unavailable for a product. The root cause is the absence of proper linking between the product in HotWax Commerce and the Shopify store.

## Description

HotWax Commerce encounters difficulties in showcasing products for pre-orders on the Shopify store when there is no linkage between the products in HotWax Commerce and the corresponding Shopify store. This issue commonly arises when a retailer manages the same product catalog across multiple Shopify stores.

## Explanation

**Products within Shopify**

Retailers streamline their operations by employing a unified product catalog across multiple Shopify stores. Consequently, products obtain distinct internal IDs on each store, while retaining a consistent and unique identifier, typically the SKU. It's important to note that not all stores carry the entire product range; instead, a hierarchical structure is established with one store functioning as the master catalog and others as child catalogs, each tailored to specific product offerings. This approach facilitates efficient management and customization of product availability across diverse Shopify storefronts.

| _Product_   | _Store1 Internal ID_ | _Store2 Internal ID_ |
| ----------- | -------------------- | -------------------- |
| **SKU1234** | 1543                 | 1462                 |

**Products in HotWax**

In instances where a common product catalog is employed across multiple Shopify stores, HotWax adopts a structured approach. It designates one specific Shopify store as the master catalog, responsible for comprehensive product information. The same set of products is then associated with other Shopify stores, considering them as child catalogs. To establish a connection with HotWax, a product must be initially configured in the parent store and subsequently linked to the corresponding child store. Failure to follow this setup process inhibits HotWax from establishing a connection with the Shopify store and transmitting updated product information. This systematic approach ensures a cohesive and organized integration between HotWax and the various Shopify stores within the shared product ecosystem.

**Association in HotWax Commerce**

| _Product_   | HotWax Internal ID | _Store1 Internal ID_ | _Store2 Internal ID_ |
| ----------- | ------------------ | -------------------- | -------------------- |
| **SKU1234** | SKU1234            | 1543                 | 1462                 |

## Troubleshooting Steps

**Step 1: Verify Product Association with the Shopify Store**

1. **Locate the Product in HotWax**
   * Navigate to the [Pre-order Catalog](https://preorder.hotwax.io/catalog) within HotWax Commerce.
   * Open the Audit page and examine the Shop listing status card to check the stores to which the product is currently listed. If it's not linked to the desired store, proceed with the following steps:

**Step 2: Link product to Shopify store**

2. **Access the Find Product Page**
   * Visit the Find Product page:https://{instanceName}.hotwax.io/commerce/control/FindProduct.
   * Open the detailed page for the specific product.
3. **Inspect the Shopify Shop Product Section**
   * On the detailed page, review the Shopify shop product section to identify the store with which the product is currently connected.
4. **Establish the Connection**
   * Initiate the connection by clicking the `Add` button.
   * Select the Shopify store designated as the Shop in OMS.
   * Input the Shopify product ID and Inventory ID (extracted from the product on the Shopify store).



<figure><img src="../.gitbook/assets/dev-oms.hotwax.io_commerce_control_ViewShopifyShop_shopId=10000 1.png" alt=""><figcaption></figcaption></figure>

**Step 3: Refresh products to reflect changes**

5. **Execute Jobs in the Job Manager App**
   * Within the Job Manager app, initiate the following jobs: `Auto refresh pre-order catalog` and `Sync variant details` by searching them from the pipeline page.
6. **Review products in Hotwax and Shopify**

By following these steps meticulously, you ensure a seamless and accurate linking of products, ultimately improving the functionality of the pre-order option on the Shopify store.

___
#### **Troubleshooting Use Case**

**Issue 1:** New or existing products do not appear as pre-orders or backorders.

**Possible Causes:**

* Item does not exist in the system
* PO status is canceled
* Item has Inventory in the system

**Resolution Steps:**

1. Status of PO items must be created or approved, ensuring canceled PO items are not considered for Pre-Order.
2. The promise date of a PO item must be in the future, guaranteeing that purchase order items will arrive in the future, not from an old PO.
3. The current inventory of the item must be 0, indicating it's out of stock and qualified for Pre-Order or backorder.
4. If the 'isNewProduct' field of a PO is marked as “yes”, it’s identified as a Pre-Order product; if marked “no”, it's categorized as a backorder product.

Products from purchase orders that don't meet these criteria won't be listed in HotWax Commerce's pre-order catalog. It's important to ensure that purchase order items adhere to these criteria for accurate listing.

**Issue 2:** Products are not removed from the pre-order or backorder category.

**Resolution Steps:**

1. Ensure all future inventory of pre-orders is received.
2. Ensure the Purchase Order status changes to “Canceled” or “Completed”.
3. Ensure the Purchase Order arrival date (promised fulfillment date) has passed.
4. There is no Return for any pre-order or backorder.


#### Troubleshooting Use Case

**Issue 1:** The product is not updated as a pre-order or a backorder at Shopify and PDP

**Possible Causes:**

1. PO status is canceled
2. PO has a past expected delivery date.
3. Items have available inventory in the system.
4. The generated file is not processed by Shopify and is lying unread at the specified SFTP location

**Resolution Steps:**

1. Status of PO items must be created or approved, ensuring canceled PO items are not considered for Pre-Order.
2. The promise date of a PO item must be in the future, guaranteeing that the purchase order item will arrive in the future, not from an old PO.
3. The current inventory of the item must be 0, indicating it's out of stock and qualified for Pre-Order or backorder.
4. If the 'isNewProduct' field of a PO is marked as “yes”, it’s identified as a Pre-Order product; if marked “no”, it's categorized as a backorder product.
5. Item is associated with the pre-order or backorder category.
6. Ensure the file is read and processed from the SFTP location.

Products from purchase orders that don't meet these criteria won't be listed in Shopify’s pre-order catalog. Contact the Shopify team if your product is still not listed on Shopify.
