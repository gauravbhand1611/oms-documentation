---
description: Learn about Routings.
---

# Routing Rules

As discussed, <mark style="color:orange;">**routing**</mark>, also known as <mark style="color:orange;">**routing rules**</mark>, enable retailers to create specific order batches based on their business requirements, such as a same-day delivery batch, a next-day delivery batch, and a standard order batch. These routing rules help in efficiently looking up orders based on urgency and shipping promises.

## Creating and Managing Order Batches

This section explains how to create multiple order batches in a brokering run using filters and sorting options to match business needs. We’ll demonstrate this by creating two routing rules: <mark style="color:orange;">**“Same-day/Next-day orders”**</mark> and <mark style="color:orange;">**“Standard orders”**</mark> within our previously created <mark style="color:orange;">**“Everyday order routing”**</mark> brokering run.

### Adding a New Routing

* Click the `Create order batch` button to create a new routing rule.
* Name the routing rule and click `Save` to add it to the list of routing rules.
* To add the next routing rule click on the `New` button next to the "Order batches" label and name your new routing rule.

Continuing our example, let's name our two routing rules as <mark style="color:orange;">**“Same-day/Next-day orders”**</mark> and <mark style="color:orange;">**"Standard orders"**</mark>.

{% tabs %}
{% tab title="Routing rule 1" %}
{% embed url="https://youtu.be/8mGEsBOps9I" %}
Creating New Routings
{% endembed %}
{% endtab %}

{% tab title="Routing rule 2" %}
{% embed url="https://youtu.be/gThkEEQPFc0" %}
Creating New Routings
{% endembed %}
{% endtab %}
{% endtabs %}

{% hint style="warning" %}
For a routing to actively process orders, you’ll need to change its status from **"Draft"** to <mark style="color:green;background-color:green;">**"Active."**</mark> Just click **"Draft"** to update it to <mark style="color:green;background-color:green;">**"Active,"**</mark> or, if needed, revert an active routing back to **"Draft"** by clicking on <mark style="color:green;background-color:green;">**"Active.**</mark><mark style="background-color:green;">**"**</mark>

This step should be done only after setting up all routing rules.
{% endhint %}

### Sequencing Routing Rules

To prioritize which the routing rule is applied first:

* Click and drag the chip on the top right of the routing card.
* The sequence number on the card will automatically update based on the card's position.

Continuing our example, we’ll position <mark style="color:orange;">**“Same-day/Next-day orders”**</mark> before <mark style="color:orange;">**"Standard orders"**</mark> to ensure the higher-priority order batch is routed first.

{% embed url="https://youtu.be/hB9QLCMXDEw" %}
Sequence Routing Rules
{% endembed %}

## Configuring Routing Rules to Create Order Batches

<mark style="color:orange;">**Creating an order batch is a two-step process:**</mark>

<table data-card-size="large" data-view="cards"><thead><tr><th></th><th></th><th></th><th data-hidden data-card-target data-type="content-ref"></th></tr></thead><tbody><tr><td><ol><li><mark style="color:orange;"><strong>Filters</strong></mark></li></ol><p>Choosing <code>Filters</code> to look up orders and group them in a batch.</p></td><td></td><td></td><td></td></tr><tr><td><ol start="2"><li><mark style="color:orange;"><strong>Sorting</strong></mark></li></ol><p>Applying <code>Sorting</code> criteria to determine the sequence in which orders are picked up during routing.</p></td><td></td><td></td><td></td></tr></tbody></table>

<figure><img src="../.gitbook/assets/Order filtering and sorting.png" alt="" width="375"><figcaption><p>Order Filters and Sorting</p></figcaption></figure>

### Step 1: Creating a Batch of Orders Using Filters

The first step in setting up routing rules is to create a batch of orders using specific filters. This ensures that the brokering algorithm correctly groups and prioritizes orders for each routing rule, allowing for more targeted fulfillment strategies.

**Here are the available Filters to create order batches:**

<figure><img src="../.gitbook/assets/Order filters (1).png" alt="" width="563"><figcaption><p>Order Batch Filters</p></figcaption></figure>

* **Origin facility group:** This parameter allows retailers to filter orders based on the [facility group ](https://docs.hotwax.co/documents/system-admins/administration/introduction/facilities-app#facility-groups)from which they originated. For example, many times when walk-in customers cannot find their preferred items in store, store associates place the order on their behalf. These are known as Send Sale orders. In this scenario, the origin facility becomes the specific physical location. If a retailer wants all Send Sale orders from specific facilities to be routed differently, then they can apply this filter to create a batch of orders and proceed to create their routing.
* **Order priority:** Not all orders carry the same urgency. Retailers can pick orders with higher priorities (such as VIP or time-sensitive orders) before others. By filtering orders based on priority, they can ensure that the most critical ones are routed and processed before any less urgent orders.
* **Promise date:** Pre-orders or backorders can be filtered based on their promise date. Retailers may choose to broker orders that have passed their promise date first, ensuring timely fulfillment of overdue orders.
* **Queue:** The parking location to pick orders from. HotWax Commerce has [virtual queues](https://docs.hotwax.co/documents/system-admins/administration/facilities/manage-parkings#default-parkings) to park orders that are not brokered to a facility. Retailers can filter by queue type (brokering queue, rejected parking, or unfillable parking) to determine which orders should be brokered to available inventory.
* **Sales channel:** Channel where the order was captured. Different sales channels (eCommerce or marketplaces) may require different routing strategies. Orders can be filtered by channel to ensure the right group of orders is picked for routing based on channel-specific fulfillment rules, reducing the risk of penalties or delays in fulfilling orders from marketplaces like Amazon.
* **Shipment method type:** SLA promised to the customer. When customers choose specific shipping methods, like expedited or same-day delivery, these orders must be prioritized differently. Retailers can use this filter to create a batch of orders based on the chosen shipping method, ensuring that orders requiring fast shipping are processed first.

Continuing with our example, let’s take a closer look at how to apply the right filters and sorting options for <mark style="color:orange;">**Same-day/Next day**</mark> routing rule.

#### <mark style="color:orange;">Applying Filters to Create Order Batches:</mark>

{% embed url="https://youtu.be/pSn6N2-y-DY" %}
Applying Filters
{% endembed %}

1. Open the **“Same-day/Next-day orders”** routing rule’s details, then navigate to the Filters option.
2. Filters help define which orders should be looked up to create a batch. For the “Same-day/Next-day” routing rule we will choose the **"Shipment method type"** and **“Queue”** filters.

* From the **“Shipping Method”** dropdown, we will choose **“Same Day"** and **"Next Day”** shipping methods to include only same-day and next-day shipping orders in our batch.
* From the **“Queue”** we will choose the **“Brokering Queue”** to include all those same-day and next-day shipping orders that are waiting for the inventory allocation.

**What does this help achieve?** With these filters in place, the brokering algorithm will look specifically for orders in the Brokering Queue that need same-day or next-day delivery. This ensures that urgent orders are prioritized in your batch for quicker inventory allocation and fulfillment.

{% hint style="info" %}
If you are not selecting any filter then all orders in all parkings will be attempted for brokering.
{% endhint %}

### Step 2: Sequencing Orders in a Batch Using Sorting

After filtering, the next step is choosing the Sorting criteria to prioritize the sequence in which individual orders within each batch are picked for inventory allocation. By applying sorting, you can align the order routing with your fulfillment goals, ensuring high-priority orders are handled first.

**Available Sorting Options:**

<figure><img src="../.gitbook/assets/Order sorting (1).png" alt="" width="563"><figcaption><p>Order Batch Sorting</p></figcaption></figure>

* **Order Date:** Sort by order date to prioritize older orders first, following a first-in, first-out (FIFO) approach.
* **Order Priority:** Orders can be sorted by customer priority levels, such as loyalty plus, loyalty, or regular customers, allowing retailers to prioritize orders for high-value customers.
* **Ship By**
* **Ship After**
* **Shipping Method:** Sorting by shipping method allows to arrange orders based on the promised SLA. For example, choosing a shipping method sorting for the Same-day/Next-day batch allows same-day orders to be picked up before next-day orders, ensuring the most urgent orders are attempted inventory allocated first.

#### <mark style="color:orange;">Choosing Sorting Options to Define Order Priority:</mark>

{% embed url="https://youtu.be/J2_LpfbHIlI" %}
Applying Sorting
{% endembed %}

1. Navigate to the `Sort` option. Continuing our example, for the <mark style="color:orange;">**“Same-day/Next-day order”**</mark> batch we will choose the **"Shipping Method”** sorting. This will ensure all same-day orders are sequenced first following by all the next day orders.
2. Finally, click on the `Save` icon in the right most corner to save your **configured routing rule**.

If you are choosing multiple sorting options, you can prioritize them into the desired sequence using drag and drop.

{% hint style="info" %}
Orders will be brokered based on order date if no sorting is specified.
{% endhint %}

_Now that you already know what filters and sorting options are available and what they mean, you can easily use them for your next routing rule._

Let’s see what should be the right filters and sorting options for our <mark style="color:orange;">**second routing rule “Standard orders”.**</mark>

{% embed url="https://youtu.be/lWRdCIO9dMs" %}
Applying Filters and Sorting for Standard Orders Batch
{% endembed %}

1. From the Filters option, we will choose the **"Shipment method type"** and **“Queue”** filters.

* Now from the **"Shipping Method"** dropdown we will choose the **“Standard”** shipping method to include only standard shipping orders.
* From the **“Queue”** dropdown we will choose the “Brokering Queue” to include all those standard shipping orders that are waiting for the inventory allocation.

2. From the Sorting option, even if we don’t choose any option all standard orders are sequenced based on their order date that is FIFO basis ensuring older orders are picked first for inventory allocation.
3. Finally, click on the `Save` icon in the right most corner to save your configured routing rule.

These examples help understand how retailers can use different filters and sorting options to create order batches and strategically fulfill orders, aligning each routing rule with specific business objectives.

### Archiving a Routing

When a routing is no longer needed in a brokering run you can `Archive` it:

{% embed url="https://youtu.be/Q_7UUkvHLPY" %}
Archive/Unarchive Routing Rule
{% endembed %}

* Click on the `Archive` button at the bottom right of the routing card.
* This action moves the routing to the archive, removing it from the brokering run flow.

Archived routings can be reactivated if needed and are accessible from the archive drawer at the bottom of the list.

<mark style="color:orange;">**Congrats!**</mark> You now have a clear understanding of how to <mark style="color:orange;">**create brokering runs and set routing rules.**</mark> The final step is choosing [inventory rules](rules.md) to complete the order routing setup.
