---
description: Learn about routings.
---

# Routing Rules

As discussed,<mark style="color:orange;">**routing**</mark>, also known as routing rules, enable retailers to create specific order batches based on their business requirements, such as a same-day delivery batch, a next-day delivery batch, and a standard order batch. These routing rules help in efficiently looking up orders based on urgency and shipping promises.

## Creating and Managing Order Batches

This section explains how to create multiple order batches in a brokering run using filters and sorting options to match business needs.

We’ll demonstrate this by creating two routing rules: “Same-day/Next-day orders” and “Standard orders” within our previously created “Everyday order routing” brokering run.

### Adding a New Routing

* Click the `Create Order Batch` button to create a new routing.
  
* Name the routing rule and click `Save` to add it to the list of routing rules in a run.

* To add the next routing rule click on the `New` button next to the "Order batches" label and name your new routing rule.

Continuing our example, let's name our two routing rules as “Same-day/Next-day orders” and "Standard orders".

For example, we’ve created a new routing within our previously discussed "High priority orders" [<mark style="color:orange;">**brokering run**</mark>](brokeringruns.md#create-brokering-run).

{% tabs %}
{% tab title="Create Order Route" %}
<figure><img src="../.gitbook/assets/New Routing.png" alt=""><figcaption><p>Create Order Batch</p></figcaption></figure>
{% endtab %}

{% tab title="View Created Order Route" %}
<figure><img src="../.gitbook/assets/Order Batch.png" alt=""><figcaption><p>View Order Batch</p></figcaption></figure>
{% endtab %}
{% endtabs %}

<figure><img src="../.gitbook/assets/Order Batches.png" alt="" width="375"><figcaption><p>New Routings</p></figcaption></figure>

{% hint style="info" %}
For a routing to actively process orders, you’ll need to change its status from "Draft" to "Active." Just click "Draft" to update it to "Active," or, if needed, revert an active routing back to "Draft" by clicking on "Active." This step should be done only after setting up all routing rules, as outlined in the upcoming [Rules](rules.md) section.
{% endhint %}

### Sequencing Routing Rules

To prioritize how the routing rules are applied:

* Click and drag the chip on the top right of the routing card.

* The sequence number on the card will automatically update based on the card's position.

Continuing our example, we’ll position “Same-day/Next-day orders” before "Standard orders" to ensure higher-priority orders are routed first.

{% embed url="https://youtu.be/_ADemNU3oPo" %}
Sequence Routings
{% endembed %}

## Configuring Routing Rules to Create Order Batches

Creating an order batch is a two-step process:

1. Choosing **Filters** to look up orders and group them in a batch.

2. Applying **Sorting** criteria to determine the sequence in which orders are picked up for during routing.


### Step 1: Creating a Batch of Orders Using Filters

The first step in setting up routing rules is to create a batch of orders using specific criteria. This ensures that the brokering algorithm correctly groups and prioritizes orders for each routing rule, allowing for more targeted fulfillment strategies.

**Here are the available Filters to create order batches:**

* **Origin Facility Groups:** This parameter allows retailers to filter orders based on the facility group from which they originated. For example, many times when walk-in customers cannot find their preferred items in store, store associates place the order on their behalf. These are known as Send Sale orders. In this scenario, the origin facility becomes the specific physical location. If a retailer wants all Send Sale orders from specific facilities to be routed differently, then they can apply this filter to create a batch of orders and proceed to create their routing.

* **Order Priority:** Not all orders carry the same urgency. Retailers can pick orders with higher priorities (such as VIP or time-sensitive orders) before others. By filtering orders based on priority, they can ensure that the most critical ones are routed and processed before any less urgent orders.

* **Promise Date:** Pre-orders or backorders can be filtered based on their promise date. Retailers may choose to broker orders that have passed their promise date first, ensuring timely fulfillment of overdue orders.

* **Queue:** The parking location to pick orders from. HotWax Commerce has virtual queues to park orders that are not brokered to a facility. Retailers can filter by queue type (brokering queue, rejected parking, or unfillable parking) to determine which orders should be brokered to available inventory.

* **Sales Channel:** Channel where the order was captured. Different sales channels (eCommerce or marketplaces) may require different routing strategies. Orders can be filtered by channel to ensure the right group of orders is picked for routing based on channel-specific fulfillment rules, reducing the risk of penalties or delays in fulfilling orders from marketplaces like Amazon.

* **Shipping Method:** SLA promised to the customer. When customers choose specific shipping methods, like expedited or same-day delivery, these orders must be prioritized differently. Retailers can use this filter to create a batch of orders based on the chosen shipping method, ensuring that orders requiring fast shipping are processed first.

Continuing with our example, let’s take a closer look at how to apply the right filters and sorting options for Same-day/Next day routing rule.

#### Applying Filters to Create Order Batches:

1. Open the “Same-day/Next-day orders” routing rule’s details, then navigate to the Filters option.

2. Filters help define which orders should be looked up to create a batch. For the “Same-day/Next-day” routing rule we will choose the "Shipping method" and “Queue” filters.

3. From the “Shipping method” dropdown, we will choose “Same-day and Next-day” shipping methods to include only same-day and next-day shipping orders in our batch.

4. From the “Queue” we will choose the “Brokering Queue” to include all those same-day and next-day shipping orders that are waiting for the inventory allocation.

What does this help achieve? With these filters in place, the brokering algorithm will look specifically for orders in the Brokering Queue that need same-day or next-day delivery. This ensures that urgent orders are prioritized in your batch for quicker allocation and fulfillment.

{% hint style="info" %}
If you are not selecting any filter then all orders in all parkings will be attempted for brokering if no filter is applied.
{% endhint %}

### Step 2: Sequencing Orders in a Batch Using Sorting

After filtering, the next step is setting up Sorting criteria to prioritize the sequence in which individual orders within each batch are picked for inventory allocation. By applying sorting, you can align the routing process with your fulfillment goals, ensuring high-priority orders are handled first.

**Available Sorting Options:**

* **Order Date:** Sort by order date to prioritize older orders first, following a first-in, first-out (FIFO) approach.

* **Order Priority:** Orders can be sorted by customer priority levels, such as loyalty plus, loyalty, or regular customers, allowing retailers to prioritize orders for high-value customers.

* **Ship By**

* **Ship After**

* **Shipping Method:** Sorting by shipping method allows to arrange orders based on the promised SLA. For example, choosing a shipping method sorting for the Same-day/Next-day batch allows same-day orders to be picked up before next-day orders, ensuring the most urgent orders are attempted inventory allocated first.

#### Choosing Sorting Options to Define Order Priority:

1. Navigate to the Sort option. Continuing our example, for the “Same-day/Next-day order” batch we will choose the "Shipping method” sorting. This will ensure all same-day orders are sequenced first following by all the next day orders.

If you are choosing multiple sorting options, you can prioritize them into the desired sequence using drag and drop.

{% hint style="info" %}
Orders will be brokered based on order date if no sorting is specified.
{% endhint %}

Now that you already know what filters and sorting options are available and what they mean, you can easily use them for your next routing rule.

Let’s see what should be the right filters and sorting options for our second routing rule “Standard orders”.

1. From the Filters option, we will choose the "Shipping Method" and “Queue” filters.

2. Now from the "Shipping Method" dropdown we will choose the “Standard” shipping method to include only standard shipping orders.

3. From the “Queue” dropdown we will choose the “Brokering Queue” to include all those standard shipping orders that are waiting for the inventory allocation.

4. From the Sorting option, even if we don’t choose any option all standard orders are sequenced based on order date that is FIFO basis ensuring those who ordered earlier receive are picked first for inventory allocation.

5. Finally, click on the “Save” icon in the right most corner to save your configured routing rule.

These examples help understand how retailers can use different filters and sorting options to create order batches and strategically fulfill orders, aligning each routing rule with specific business objectives.

{% hint style="warning" %}
For a routing to actively process orders, you’ll need to change its status from "Draft" to "Active." Just click "Draft" to update it to "Active," or, if needed, revert an active routing back to "Draft" by clicking on "Active." This step should be done only after setting up all routing rules, as outlined in this section.
{% endhint %}

### Archiving a Routing

When a routing is no longer needed in a brokering run you can Archive it:

{% embed url="https://youtu.be/DIllLJkyr3o" %}
Archive Unarchive a Routing
{% endembed %}

* Click on the **Archive** button at the bottom right of the routing card.
* This action moves the routing to the archive, removing it from the brokering run flow.

Archived routings can be reactivated if needed and are accessible from the archive drawer at the bottom of the list.

Congrats! You now have a clear understanding of how to create brokering runs and set routing rules. The final step is choosing inventory rules to complete the order routing setup.


<figure><img src="../.gitbook/assets/Routings.png" alt=""><figcaption><p>Routing in Order Routing App</p></figcaption></figure>

<table data-view="cards"><thead><tr><th></th><th></th><th></th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td><ol><li><mark style="color:orange;"><strong>Finding Orders</strong></mark></li></ol><p>Customize the criteria for orders using the options icon in the "Filters" section.</p><p>Sort order batches by adding sorting criteria and rearranging them.</p></td><td></td><td></td><td><a href="rules.md#id-1.-finding-orders">#id-1.-finding-orders</a></td></tr><tr><td><ol start="2"><li><mark style="color:orange;"><strong>Finding Inventory</strong></mark></li></ol></td><td>Manage filters applied to determine where orders in this routing should be attempted for allocation.</td><td>Sort inventory options to prioritize available inventory effectively.</td><td><a href="rules.md#id-2.-finding-inventory">#id-2.-finding-inventory</a></td></tr><tr><td><ol start="3"><li><mark style="color:orange;"><strong>Allocation Actions</strong></mark></li></ol><p>Specify actions related to order allocation.</p></td><td></td><td></td><td><a href="rules.md#id-3.-allocation-actions">#id-3.-allocation-actions</a></td></tr></tbody></table>

In the final chapter, let's dive deeper into the order fetching and recursive inventory allocation [rules](rules.md) that ensure orders are always fulfilled from the most optimal location, just the way you want.
