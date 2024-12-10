---
description: >-
  Discover how HotWax Commerce ensures precise inventory synchronization of Kit
  Products to Shopify.
---

# Inventory Synchronization of Kit Products

### How does HotWax Commerce Ensure Accurate Inventory of Kit Products is Synchronized to Shopify?

In HotWax Commerce, components of kit products are associated with a parent product defined as a marketing package. This package, being a virtual product, doesn't have its own inventory. As a result, HotWax Commerce doesn't synchronize inventory data for this product.

**Inventory Calculation with Bundles App**

The Bundles app computes inventory based on the lowest available quantity among all individual components. For instance, if a kit consists of a Belt and a Wallet:

* Belt's inventory: 7
* Wallet's inventory: 10

The kit's inventory becomes 7, as it matches the lowest quantity available.

**Inventory Updates and Frequency**

HotWax Commerce synchronizes the inventory of components as regular products using the '[Upload recent inventory changes job](https://docs.hotwax.co/documents/v/retail-operations/workflow/job-workflows/inventory#upload-recent-inventory-changes)'. The Bundles app checks for inventory changes every 10 minutes and computes the bundle's inventory.

For instance, if a customer buys a belt and its inventory reduces to 6, the Bundles app also decreases the inventory of the bundled product.

**Inventory Calculation without Bundles App**

To reduce the risk of inaccurate kit inventory, HotWax Commerce suggests that retailers set up kit products in Shopify as individual products with their SKUs, just like any other item. Even though these kits are made up of several components, Shopify treats them as a single product.

In this setup, NetSuite helps by connecting the kit product to its components. HotWax Commerce downloads these kits from Shopify as regular products and uses its [integration with NetSuite ](https://docs.hotwax.co/documents/learn-netsuite/integration-flows/kitproducts)to identify the components that make up each kit.

HotWax Commerce calculates kit inventory based on the lowest available quantity of each component at individual locations, ensuring that the correct number of kits can be fulfilled at each fulfillment location.

Let's consider a bundle with Belts and Wallets as its components across different locations:

* Times Square Store: 5 Belts
* Brooklyn Store: 10 Wallets
* Broadway Store: 3 Belts and 7 Wallets

HotWax Commerce ensures accurate inventory management by calculating the inventory based on the lowest available quantity at a single facility. In this example, it would push an inventory of 3 to Shopify for this bundle, representing the available quantity of the scarcest component among all locations in the bundle.

**Limitations of using Bundles App**

Bundles simplify kit products and their component management, but it has drawbacks when it comes to determining inventory for multi-location fulfillment. The app aggregates the lowest inventory of each component accessible across every location to determine kit inventory. Because it ignores the need for every element of a kit to be accessible at the same place to fulfill the order, this method may lead to inaccurate inventory counts.

For example, suppose a kit product consists of a belt and a wallet, with the inventory distributed between two stores:

* Brooklyn Store: 3 belts, 2 wallets
* Broadway Store: 1 belt, 5 wallets

In this case, the Bundles App calculates the total kit inventory as 4 by adding the total number of belts and wallets across both locations (belts: 3 + 1 = 4, wallets: 2 + 5 = 7).

Learn more about how HotWax Commerce helps retailers [manage kit products](https://docs.hotwax.co/documents/learn-netsuite/integration-flows/kitproducts) and their components in Shopify and NetSuite if the retailer is not using the Bundles App.
