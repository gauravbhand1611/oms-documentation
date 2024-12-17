---
description: >-
  Discover the Process of Downloading Kit Orders from Shopify to HotWax Commerce.
---

# Kit Order Download

### How are Orders for Kit Products Downloaded from Shopify to HotWax Commerce?  

HotWax Commerce imports orders for kit products from Shopify through the **Import Orders** job.  

When HotWax imports an order, the first step is to check how many items are included in the order. For each item, HotWax retrieves its associated **product ID**.  

These product IDs are predefined in HotWax Commerce and mapped to specific product types. For example:  

- If the **product ID** is **1001**, the system recognizes the product type as **FINISHED GOOD**.  
- If the **product ID** is **2010**, the system identifies the product type as **MARKETING_PKG_PICK**, which corresponds to a **kit product**.  

Once the product ID is identified, HotWax associates it with the right product in its system. If the product type is identified as **MARKETING_PKG_PICK**, the order is recognized as a **Kit Order**.  

### Kit Order Brokering  

After identifying the product type as **MARKETING_PKG_PICK**, HotWax Commerce directly brokers the entire kit order to the facility where the inventory is available rather than brokering each component separately.  

A specific job called the **"Bulk Recent Kit Product Inventory Setup"** job runs in HotWax Commerce to calculate the inventory of kit products by considering the lowest available inventory of their components at a given location.  

This job computes the kit inventory for each location and the **order routing and brokering** in HotWax Commerce then ensures that the kit order is sent to the appropriate facility based on the available inventory of the kit product and its components.  
