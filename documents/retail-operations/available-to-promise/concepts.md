# Concepts

## Product Tags
Product tags are labels or keywords that retailers use to categorize and organize their products. These tags can help classify products based on various attributes such as type, season, brand, or other custom criteria. For example, a retailer might use tags like `summer collection`, `new arrivals`, or `clearance` to manage and track specific groups of products easily. Tags simplify inventory management and allow retailers to quickly identify and apply specific rules to products across their catalog.

In HotWax Commerce, product tags play a crucial role in creating Available to Promise (ATP) rules. Instead of manually configuring ATP settings for each product individually, especially for large catalogs, HotWax Commerce leverages product tags to streamline the process. Since retailers typically use product tags in Shopify to manage their product listings, HotWax Commerce syncs these tags from Shopify and uses them to apply ATP rules efficiently.

For example, a retailer may want to ensure that products tagged as `clearance` are not available for store fulfillment, or that `new arrivals` have specific safety stock thresholds across all stores. By using tags, retailers can configure these rules once and apply them consistently to all products that share the same tag, saving time and ensuring accurate inventory management across channels.

## Facility Groups
Facility groups are collections of multiple facilities organized together for specific business purposes, enabling businesses to manage and utilize their facilities more effectively. A common use of facility groups is to define which facilities participate in online order fulfillment. For instance, warehouses are typically involved in fulfilling online orders, and in an omnichannel setup, stores can also participate in this process. However, not all facilities are involved in store-based fulfillment. By using facility groups, businesses can clearly specify which stores and warehouses handle online order fulfillment.

In this case, facility groups commonly manage inventory synchronization for online Available-to-Promise (ATP) inventory. Two types of facility groups are commonly used when syncing inventory with Shopify or other online sales channels.

#### Pickup Group
Facilities that fulfill `BOPIS` (Buy Online, Pick Up In Store) orders require a designated staging area for efficient processing, as same-day pickups demand immediate picking and packing. Only facilities capable of handling `BOPIS` orders should be included in this group.

In HotWax Commerce, each facility group has a type, and business rules are tied to the group type. For `BOPIS`, a default **`PICKUP`** facility group is available. Retailers must add all facilities they want to enable for `BOPIS` to this group. Once included, these facilities will be available as pickup options for customers on the Shopify product detail page (`PDP`).

Facilities can be added to this group in multiple ways:
- From the `Group` page of the `Facility App`
- You can also add the facilities to this group by turning on the toggle for `Allow Pickup` in the `Fulfillment settings` card on the `Facility Details` page in the `Facilities App`.
- Alternatively, for a more centralized experience, you can add the facilities to this facility group from the `Facilities` tab of the `Store Pickup` page in the `ATP App`.

{% hint style="info" %}
All facilities in this group can be viewed on the `Facility Groups` page in the `Facilities App` or through the `Facilities` tab of the `Store Pickup` page in the `ATP App`.
{% endhint %}

#### Channel Facility Groups
This facility group is created to determine whether a facility will participate in selling its inventory online. If a facility is capable of fulfilling online orders and wants to sell its inventory online, it can be added to a facility group with the **`CHANNEL FAC GROUP`** type. If a facility does not want to sell its inventory online, it can be excluded from the group. When calculating the unified online `ATP` for a Shopify store or any online sales channel, only the inventory of facilities in this group will be considered.

The facility group of type **`CHANNEL FAC GROUP`** is not by default available in HotWax Commerce, so it must be created either through the `Facilities App` on the `Facility Group` page or via the `Inventory Channel` page in the `ATP App`.

Once the Facility Group is created, the facilities can be added to this group in multiple ways:
- From the `Group` page of the `Facilities App`
- You can add individual facilities by turning on the `Sell Inventory Toggle` in the `Facility Details` page of the `Facilities App`.
- Alternatively, for a more centralized experience, you can add facilities from the `Channels` tab on the `Inventory Channel` page of the `ATP App`.

{% hint style="info" %}
Facility groups created in the `Facilities App` with the **`CHANNEL FAC GROUP`** type will be visible on the `Inventory Channels` page, and vice versa.
{% endhint %}

{% hint style="info" %}
Each facility group for online fulfillment can be linked to a Shopify store. The `Publish` tab on the `Inventory Channel` page of the `ATP App` allows you to specify the inventory of which facility group will be synced to which Shopify store.
{% endhint %}

## Inventory Channels

Suppose a retailer sells inventory across different channels, such as different Shopify Stores and third-party marketplaces. In that case, they need to create separate **Inventory Channels** in HotWax Commerce to manage the availability and fulfillment of inventory for each channel. Each **Inventory Channel** is tailored to a specific sales channel, ensuring that inventory is accurately tracked, allocated, and fulfilled based on the requirements of that channel.

### Components of an Inventory Channel

An Inventory Channel is created by merging two key components:

1. **Facility Group**: This is the Channel facility Group that we previously discussed. This channel defines the inventory of which facilities will be pushed to which inventory channel.
2. **Configuration Facility**: This virtual facility allows network-level Product ATP (Available-to-Promise) configurations, such as inventory thresholds and product-level settings that apply across the entire retail network.

Together, these components work to ensure that inventory is allocated and managed according to the needs of each specific sales channel.

### Facility Groups and Online Sales Participation of Facilities

As previously mentioned, the "CHANNEL FAC GROUP" is used to configure which facilities will participate in selling their inventory online. When calculating the unified online ATP for a Shopify store or any other online sales channel, only the inventory from facilities within this specific group is considered. This setup enables retailers to control which facilities are responsible for fulfilling orders for specific channels.

For example, a retailer might have multiple online stores—one for the US and one for Canada—and use a mix of physical stores and warehouses. Each store may require different inventory sources for fulfillment:

- A US Shopify Store might fulfill orders only from a warehouse located in Canada.
- A Canada Shopify Store might fulfill orders from both the Canadian warehouse and physical stores located within Canada.

In scenarios where the same facilities are shared between different online channels, a single facility group may suffice. However, if different facilities are allocated to specific stores or regions, separate facility groups should be created, with each linked to the relevant Shopify store or sales channel.

This configuration ensures that the correct inventory from the appropriate facilities is available for each online sales channel, optimizing fulfillment and reducing the risk of overselling or inventory discrepancies.

### Configuration Facility and Network-Level Product Settings

The Configuration Facility is a virtual facility that plays a critical role when managing product-level ATP configurations at a network-wide scale. It is used to apply product-level settings such as inventory thresholds and product visibility across channels (e.g., Store Pickup and Shipping settings). This virtual facility ensures that certain network-wide configurations, like ATP thresholds, are applied consistently across all relevant sales channels.

### Inventory Channel Setup

To create an Inventory Channel, the first step is to create a Facility Group of the "CHANNEL FAC GROUP" type. This facility group is not available by default and must be created through one of the following options:

- The Facility Group Page in the Facilities App.
- The Inventory Channel Page in the ATP App.

Once the facility group is created, facilities can be added in several ways:

- From the Facility Group page in the Facilities App, individual facilities can be added by toggling the "Sell Inventory" option on the Facility Details page.
- From the Channels Tab on the Inventory Channel page in the ATP App, facilities can be centrally managed and assigned to the appropriate channels.

For more detailed instructions on how to create multiple Channel Facility Groups and Configuration Facilities in HotWax Commerce, please refer to our detailed user manual.
