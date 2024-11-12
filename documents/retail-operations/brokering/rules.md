---
description: Learn about Inventory Rules.
---

# Rules

As discussed, <mark style="color:orange;">**Inventory Rules**</mark> help orchestrate the process of choosing the most suitable fulfillment locations for each batch of orders based on defined criteria like proximity, stock levels, and strategic priorities. These rules act as sequential steps in the order routing, guiding the brokering engine through multiple checks to find the best fulfillment location.

## Creating and Managing Multiple Recursive Inventory Rules

Here’s how multiple inventory rules work within each routing rule:

* Each rule is checked in sequence. If a rule does not allocate inventory to an order, the brokering engine attempts inventory allocation using the next rule.

* If, after all rules, an order still lacks inventory allocation, an auto-cancellation date can be applied, or the order may be moved to a different queue for reattempted routing.

Note: You can easily drag and drop inventory rules to reorder them. The order in which the rules are arranged is important, as the first inventory rule is always evaluated first, followed by the next one. This allows for flexibility in adjusting the sequence as per changing requirements.

In this section, we’ll demonstrate how to set up recursive inventory rules for two routing rules we created earlier: “Same-day/Next-day orders” and “Standard orders.”

**Creating inventory rules is a three-step process:**

1. Choosing `Filters` to look up eligible facilities with inventory that can fulfill an order.

2. Applying `Sorting` criteria to determine which facility should be selected to allocate an order.

3. Applying after `Actions` logic to define fallback actions for orders that cannot be fully allocated to a single facility. The actions also help configure the  final steps if all previous rules don’t allocate inventory to orders.

### Step 1: Finding Facilities with Inventory Using Filters

The first step is to filter the available facilities to narrow down those capable of fulfilling an order. This filtering ensures the brokering algorithm only considers facilities that meet the specific fulfillment requirements, whether for same-day/next-day delivery or standard shipping.

For example, a retailer may want only certain stores or warehouses to handle high-priority orders like same-day or next-day orders, whereas standard orders may be routed to a broader range of warehouses. In this way, same-day/next-day orders will look up inventory from only the nearest stores and warehouses, while standard orders are routed to general warehouses.

**Now, if you are wondering how to achieve this configuration, here’s how:**

Retailers set up facility groups in HotWax’s Facility App. The first facility group can include both stores and warehouses and another can include only warehouses. This setup provides control over facility look up based on the order type and urgency. Here’s a user manual to understand more about the app and its use cases.

HotWax Commerce offers several Inventory Filters to fine-tune which fulfillment locations are eligible for allocation, including:

* **Turn Off the Facility Order Limit Check:** Retailers have the option to bypass the maximum order limit for a facility. This filter allows flexibility in managing facility capacity during peak times or high demand periods. For example, if a retailer chooses to turn off this limit, orders can continue to be brokered to that facility even after its order limit has been reached.

* **Brokering Safety Stock:** Different from online ATP safety stock, brokering safety stock defines the minimum stock required for an order to be brokered to a facility. For example, if a retailer sets a brokering safety stock level of 10 units, only facilities with at least 10 units of the item in stock will be eligible to fulfill the order. This prevents over-allocation and ensures that safety stock levels are maintained for unforeseen demand.

* **Facility Group:** Custom grouping of locations. Grouping certain facilities allows retailers to simplify their decision-making. For example, as discussed above, there can be a dedicated facility group of only warehouses, one group can have both stores and warehouses or there can also be slow-moving or lower-demand facilities can be grouped together and allotted for non-urgent orders, while high-demand facilities are reserved for time-sensitive fulfillment.

* **Proximity:** Distance between fulfillment facility and customer’s address. When a facility address is added in HotWax, its latitude and longitude are automatically saved. Similarly, HotWax also saves customer addresses. With both locations’ lat long saved, HotWax can compare the coordinates to identify warehouses and stores within the defined proximity that have available inventory. For example, a retailer can set a 200-mile proximity limit for next-day delivery orders, ensuring only inventory within 200 miles of the customer's address is used. This approach supports timely delivery and helps meet delivery SLAs while reducing shipping times.

* **Broker Only if All Ship Group Items Are Available**

* **Split Order Item Group:** Retailers can control whether they want to split items that belong to a specific order item group. For example, certain items, like gift sets or kits, may need to be shipped together to maintain the integrity of the order. Retailers can decide whether to allow splitting of such groups or to prioritize keeping them intact, even if other items in the order are split across multiple facilities.

{% hint style="info" %}
All facilities enabled for online fulfillment will be attempted for brokering if no filter is applied.
{% endhint %}

Continuing our example, let's first create inventory rules for “Same-day/Next-day orders routing.

#### Applying Filters to look up facilities with inventory:

1. Start Creating the Inventory Rule:

 * Click the “Add Inventory Rule” button.
 
 * Name the rule, such as “Check all warehouses in 100 miles,” to reflect its purpose of checking only the closest warehouses that can meet the same-day or next-day delivery SLA.
 
 * Click “Save” to save the rule name.

2. Configure Filters:

 * Select the right filters to narrow down eligible facilities. For the “Same-day/Next-day orders” routing rule, we will choose “Facility Group” and “Proximity”.
 
 Here’s how it will look: (image)
 
 * Facility Group: Select “warehouses” from the dropdown. This ensures that only warehouses with available inventory are eligible. Why did we choose warehouse locations?
 
   Warehouses handle larger inventory volumes and can better support online order fulfillment compared to stores, which often focus on walk-in customers.
 
 * Proximity: Set the distance to 100 miles, so the rule includes only those warehouses within a 100-mile radius of the customer’s location.
 
   This ensures that only nearby warehouses are considered, optimizing delivery speed and meeting SLA requirements.

If no warehouse within 100 miles has inventory available then in the next inventory rule we’ll expand the search to include both stores and warehouses. This multi-step approach ensures that the brokering engine first considers optimal warehouse locations before looking at stores, maximizing efficiency.

### Step 2: Sequencing Eligible Facilities Using Sorting

Once the eligible facilities are filtered, the next step is to set up sorting criteria to prioritize these locations based on specific requirements. Sorting determines the sequence in which the brokering engine evaluates facilities, enabling it to choose the most optimal location for fulfillment. For example, if 10 facilities meet the filtering criteria, sorting ensures that the brokering engine selects the best-suited one based on your fulfillment goals, whether that’s faster delivery, balanced workload, or efficient inventory usage.

**Here are the available sorting options:**

* **Proximity:** Retailers can sort inventory allocation based on the distance between the customer's shipping address and the facility. This sorting method prioritizes inventory located closer to the customer, helping reduce shipping times and costs, especially for expedited orders or those requiring same-day or next-day delivery.

* **Facility Order Limit:** In order to ensure that the workload at facilities is balanced, facilities can also be sorted on how much fulfillment capacity they have left.

* **Inventory Balance:** Inventory can be sorted based on stock levels, ensuring that orders are routed to the facility with the highest available inventory of the ordered item. This method helps to deplete stock from high-inventory locations first, ensuring better stock rotation and preventing stock outs at key locations.

* **Custom Sequence:** Allows full manual override to the sequence at which facilities are attempted. Retailers can set a custom sequence of facilities, defining a specific order in which locations should be considered for order routing. For example, if a retailer wants to prioritize fulfillment from underperforming stores with lower foot traffic, they can create a custom sequence that favors those stores, helping to balance inventory across all locations. Custom sequences can also be useful for managing seasonal inventory or routing orders to specific regions.

{% hint style="info" %}
Facilities will be sorted based on creation date if no sorting preferences are applied.
{% endhint %}

**Choosing Sorting Options to select the most optimal facility:**

Navigate to the Sort option. Continuing our example, for the “Check all warehouses in 100 miles” inventory rule, we’ll use the Proximity sorting option. This choice will arrange eligible facilities within the 100-mile range by their distance from the customer, ensuring that the closest warehouse is chosen for fulfillment. This approach aligns with the goal of meeting same-day or next-day delivery requirements by minimizing transit time.

### Step 3: After Actions Logic

After applying filters and sorting, the final step is to define what be the actions if some orders in the batch do not receive inventory. These “Actions” allow you to handle scenarios where items are only partially available or completely unavailable. This step ensures that all orders are accurately managed, whether through partial fulfillment, or rerouting.

**Here are the available actions:**

1. **Partially available**

 * **Allow partial allocation:** Allow an order to be split and allocated partially if some items are available at a location.
 
   Because order splitting increases costs, retailers can also enable “Brokering Shipment Threshold”. This ensures that an order is split only if its value is more than a defined min order value. Here are more details about this and how to implement it.
 
 * **Partially allocate grouped items:** Allow order that contains kits or gift items to be split and allocated partially.

2. **Unavailable items**

 * **Move items to queue:** Transfer unallocated order items to the selected queue for further processing. When inventory couldn’t be allocated to an order but further allocation attempts should not be made, the order can be moved to a specific queue. This allows for holding such unfillable orders until the appropriate action can be taken. For example, unfillable orders can be moved to the "Unfillable Parking", where they can later be rerouted through a different routing strategy.
 
 * **Next rule:** Automatically move unallocated order items to the next inventory rule in the sequence.
 
 * **Auto cancel days:** Specify the number of days to automatically cancel orders that could not be allocated. Based on the inventory availability, retailers may want to add an auto cancel date on the order, to ensure that they do not remain in the fulfillment pipeline for too long.
 
 * **Clear auto cancel days:** This option is helpful when an auto-cancel date has been applied, but incoming inventory is expected to fulfill the order. For example, if unfillable items were moved to "Unfillable Parking" with an auto-cancel date, clearing the date when stock is expected to arrive can prevent automatic cancellation. This allows the brokering engine to reroute the order once inventory arrives, maximizing fulfillment opportunities.
 
   It’s also important to understand that applying auto-cancel date or clearing auto-cancel date will be applied to all the unfillable orders. If you have an exception case where you only want to perform an action for a single order, then you should do that from HotWax OMS, you can move the particular order to new parking like “Unfillable Hold Parking”, doing this removes its auto cancel date.

#### Deciding Actions to choose the most optimal facility:

1. In Actions, navigate to the partially available card. Continuing our example, for the “Check all warehouses in 100 miles” inventory rule, we’ll keep the partial fulfillment as disabled because we want to try allocating inventory to orders using multiple rules without splitting an order. We can allow splitting in our final inventory rule.

2. Navigate to unavailable items card. Here we will only enable the next rule option. This means that the brokering engine will now try to allocate inventory using the next configured inventory rule in our sequence. We don’t want to apply an auto cancel date yet or move unfillable items to a separate queue. We can do this in our final rule.

### Configuring Additional Inventory Rules for Same-Day and Next-Day Orders

With the first inventory rule in place, the next steps involve configuring additional rules to widen the facility look up and ensure optimal allocation for same-day and next-day orders.

{% hint style="info" %}
The following examples provide a brief overview of potential inventory rules, which may vary depending on a business’s unique priorities and requirements.
{% endhint %}

* To add more inventory rules, follow these steps:

* Click on the “Add Inventory Rule” button and give the new rule a distinct name.

* For the **_second inventory rule_**, we will expand Facility Lookup with Proximity Filter:

**Filter:** We will use the Proximity filter, setting the distance to 100 miles. This rule expands the facility lookup to include all facilities (both stores and warehouses) within a 100-mile radius of the customer’s location.

{% hint style="info" %}
We are not using the Facility Group filter here to include all fulfillment locations (stores and warehouses) within the 100-mile radius.
{% endhint %}

**Sorting:** Under sorting, we will choose proximity to ensure the closest facility with the available inventory is selected.

**Action:** For any items in this batch that remain unfillable, we will set the action as “Move unavailable items” to the “Next Rule.”

* For the **_third inventory rule_**, we will further expand Facility Lookup with Proximity Filter:

**Filter:** We will use the Proximity filter, setting the distance to 250 miles. This rule expands the facility lookup to include all facilities (both stores and warehouses) within a 250-mile radius of the customer’s location.

**Sorting:** Again, we will use the proximity option to choose the closest facility with available inventory.

**Action:** For any items in this batch that remain unfillable, we will set the action as “Move unavailable items” to the “Next Rule.”

* For the **_fourth inventory rule_**, we will further expand Facility Lookup without any distance limitation:

**Filter:** We will not apply any filter, allowing the brokering engine to consider all facilities, regardless of distance.

This rule ensures that every facility (store or warehouse) is looked up to fulfill unallocated orders.

**Sorting:** We will sort facilities by proximity, so the closest location is selected.

**Action:** For any items in this batch that still remain unfillable, we will set the action as “Move unavailable items” to the “Next Rule.”

* For the final **_fifth inventory rule_**, we will again include all facilities but also enable order splitting to allow partial fulfillment across different facilities.

**Filter:** We will not apply any filter, allowing the brokering engine to consider all facilities, regardless of distance.

**Sorting:** We will sort facilities by proximity, so the closest location is selected.

**Action:** We will toggle ON “partial allocation” to enable partial allocation across multiple facilities if inventory is spread out.

For items in this batch that still remain unfillable after we have applied various multiple recursive rules, we will set the final action as “Move unavailable items” to the “Queue,” and select “Unfillable Parking” from the dropdown.

We will also apply an auto-cancel date for these unfillable orders.

{% hint style="warning" %}
Once you've configured each rule, change its status from "Draft" to "Active" to make it operational. To do this, click on "Draft" and select "Active," or revert an active rule back to "Draft" if any adjustments are required.

Once all rules are active, and your routing is fully configured, ensure the Brokering Run itself is set to "Active" so that it can begin processing orders as scheduled.
{% endhint %}

### What differently can we do for standard orders?

For standard orders with a longer SLA (7 days or more), inventory rules can be configured differently to prioritize fulfillment from warehouse locations, reserving in-store stock for higher-priority, faster-shipping orders. Here’s how to create inventory rules for “Standard orders” routing:

* Navigate to the Brokering Run details page, choose the “Standard orders” routing, and follow the steps below to add inventory rules.

* Click on the “Add Inventory Rule” button and give the new rule a distinct name.

* For the **_first inventory rule_**, we will prioritize warehouse locations with most inventory. 

**Filter:** We will choose “Warehouses” in the “Facility group”, excluding stores to maintain inventory levels for faster-shipping orders.  We will also use the Proximity filter, setting the distance to 250 miles. This rule expands the facility lookup to include all warehouses within a 250-mile radius of the customer’s location, ensuring if a nearby warehouse is available, we can reduce the shipping cost.

**Sorting:** We will choose “Inventory balance” to route orders to warehouses with the highest available inventory. Proximity sorting isn’t prioritized here, as the goal is to maximize inventory balance within 250 miles.

**Action:** For any items that remain unfillable, we will set the action to “Move unavailable items” to the “Next Rule.”

* For the **_second inventory rule_**, we will prioritize warehouse locations with most inventory. 

**Filter:** We will use the Facility Group filter and continue to restrict the facility lookup to warehouses only but we will now expand the distance to 500 miles using the Proximity filter.

**Sorting:** We will again choose “Inventory balance” sorting to select the optimal warehouse in 500 miles with the available inventory.

**Action:** If any items still remain unfillable, we will set the action to “Move unavailable items” to the “Next Rule.”

For the **final third inventory rule_**, we will look up all warehouse locations.

**Filter:** We will continue to restrict the facility lookup to warehouses only using the Facility Group filter. However, this time we will not use the Proximity filter, allowing all warehouse locations to be considered.

**Sorting:** We will again choose “Inventory balance” sorting to select the optimal warehouse with available stock.

**Action:** For items in this batch that still remain unfillable after we have applied various multiple recursive inventory rules, we will set the final action as “Move unavailable items” to the “Queue,” and select “Unfillable Parking” from the dropdown.

We will also apply an auto-cancel date for these unfillable orders.

This is how in a single Brokering Run, you can set up multiple routings with unique inventory rules based on each order batch specific needs.

### What differently did we do for standard orders? 

For standard orders, splitting is disabled across all inventory rules, the focus is solely on warehouse locations, and “Inventory balance” is prioritized over “Proximity.”

## Key Takeaways

* Brokering runs determine the frequency for routing order batches.

* Routing, also known as a routing rule, involves creating order batches based on filters for order lookup and sorting. It’s a flexible setup where you decide which orders should be grouped together.

* Inventory rules, within each routing setup, you can define multiple inventory rules. If the first inventory rule doesn’t fully allocate inventory to an order, the brokering engine checks the next rules in sequence. Each rule helps look up facilities with the available inventory.

* After actions logic, when inventory rules are applied, specific decisions need to be made based on inventory availability. For example, an item may be unavailable at a single facility, or not available at all. Handling these cases may involve using options like order splitting or moving orders to the Unfillable Queue.

Understanding and appropriately configuring these actions will let you fine-tune brokering rules, improving order routing efficiency and meeting specific fulfillment requirements.

{% hint style="success" %}
By leveraging HotWax Commerce Order Routing App, retailers can create highly customized and efficient order routing strategies that optimize inventory usage, reduce shipping times and costs, and align their fulfillment process with their unique business needs.
{% endhint %}

### Next Steps

In the following sections, we’ll cover a range of business use cases that the HotWax Commerce Order Routing App can help achieve, highlighting its adaptability to various inventory and order fulfillment needs.

