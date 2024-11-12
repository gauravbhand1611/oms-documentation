---
description: Learn about brokering runs.
---

# Brokering Runs

As discussed, <mark style="color:orange;">**Brokering Runs**</mark> serve as the highest level of organization for order routing, determining when and how often order routing occurs.

### Creating Brokering Runs

Each brokering run has a specific frequency, such as every 5 minutes, hourly, daily, or a custom interval based on specific business requirements. With multiple brokering runs, retailers can fine-tune routing for different priority levels, handling everything from urgent, same-day orders to routine, standard delivery orders.

### Why Use Multiple Brokering Runs?

Multiple brokering runs allow retailers to assign different routing frequencies based on order priority, optimizing order processing without overloading resources.

For example, high-priority orders can be routed more frequently (every 5 minutes), ensuring that urgent orders receive immediate attention, while standard or less time-sensitive orders are routed at more moderate intervals (hourly).

### Single vs. Multiple Brokering Runs

*   **Single Run Setup:** For retailers with similar urgency across orders and a lower order volume, a single run at regular intervals (every hour) can manage all order types in one brokering cycle.

    * _Everyday routing for all orders_: Within this single brokering run, multiple routing rules (order batches) can be created to address different delivery needs, such as same-day delivery orders, two-day delivery orders and standard delivery orders. We’ll understand in depth about routing rules in the next sections.


*   **Multiple Runs for Different Priorities:** In the event where order fulfillment priorities vary significantly and the order volume is high, creating separate runs can optimize resources and allocation:

    * _High-Priority Orders_: For orders requiring same-day, next-day, or two-day delivery, setting a frequency of the brokering run to every 5 minutes can quickly allocate inventory to this order batch and meet urgent fulfillment deadlines.
    * _Medium-Priority Orders_: For orders on standard deliveries, a separate brokering run with a 6-hour interval can balance routine order routing with the available resources.


* **Seasonal Run Adjustments:** During peak seasons, like holidays, retailers can activate a dedicated high-frequency brokering run to handle increased order volumes. For example, a run set to every 5 minutes for all orders that can remain in draft mode on regular days but be activated to handle seasonal surges.

The frequency and configuration of each run are critical for optimizing brokering strategies, allowing retailers to meet diverse order priorities effectively.

Now let’s understand how you can achieve your order fulfillment goals with the HotWax Commerce’s Order Routing App:

#### Steps to Create a New Brokering Run

1. **Access the Order Routing App**
   * Open the `Order Routing` App, where you’ll see the home page displaying all currently arranged brokering runs. If no brokering runs are scheduled, this page will appear blank.

{% hint style="info" %}
If you have multiple product stores, you’ll be prompted to choose the store for which you want to create a brokering run. This feature helps in managing order routing uniquely for each store. Learn more about [product stores](https://docs.hotwax.co/documents/system-admins/product-store/add-more-product-stores).
{% endhint %}

2. **Initiate a New Run**
   * Click on the `New Run` button to begin creating a new brokering run. You’ll be prompted to provide a name for this run, which will help identify it in your list of scheduled brokering runs.

<figure><img src="../.gitbook/assets/New Brokering Run.png" alt=""><figcaption><p>Initiate a New Run</p></figcaption></figure>

&#x20; 3\.  **Name the Run**

* Give the run a meaningful name that reflects its purpose. For example, if you’re creating a single brokering run for all orders you can name it **“Everyday order routing”** or if you are creating a brokering run specifically for orders that require fast fulfillment, you could name it something like **“High Priority Orders”** with the next run as **“Medium Priority Orders”.**

{% tabs %}
{% tab title="Single Brokering Run" %}
<figure><img src="../.gitbook/assets/Single Brokering Run.png" alt=""><figcaption><p>Single Brokering Run</p></figcaption></figure>
{% endtab %}

{% tab title="Multiple Brokering Run" %}
<figure><img src="../.gitbook/assets/Multiple Brokering Runs.png" alt=""><figcaption><p>Mutiple Brokering Run</p></figcaption></figure>
{% endtab %}
{% endtabs %}

4. **Add a Description**
   * After naming the run, add a description to provide further context. Descriptions help in clarifying the intent behind each brokering run, making it easier for team members to understand its specific function.
   * For example, if there is a single run for everyday routing of all orders, you can write: “Hourly routing for all online orders” or if the run focuses on urgent orders, you can write: “Prioritized routing for same-day, next-day, and two-day delivery orders.”

<figure><img src="../.gitbook/assets/Run details.png" alt=""><figcaption><p>Brokering Run Details</p></figcaption></figure>

5. **Schedule the Brokering Run using Predefined Frequency or Cron Expressions**

<figure><img src="../.gitbook/assets/schedule run.png" alt="" width="375"><figcaption><p>Schedule a Brokering Run</p></figcaption></figure>

* Set the frequency and runtime for the brokering run. You can choose predefined intervals or use cron expressions to customize the schedule based on your business needs. Here are a few examples of valid cron expressions you can use:

<table><thead><tr><th width="231">Schedule Description</th><th width="207">Cron Expression</th><th>Explanation</th></tr></thead><tbody><tr><td>Run Every 5 Minutes</td><td><code>*/5 * * * *</code></td><td>Triggers the brokering run every 5 minutes throughout the day.</td></tr><tr><td>Run Every Hour</td><td><code>0 * * * *</code></td><td>Triggers the brokering run every hour throughout the day.</td></tr><tr><td>Run Every Hour Between 8 AM and 2 PM</td><td><code>0 8-14 * * *</code></td><td>Triggers the brokering run at the top of every hour, between 8 AM and 2 PM.</td></tr><tr><td>Run Every Day at 7 AM</td><td><code>0 7 * * *</code></td><td>Triggers the brokering run every day at 7 AM.</td></tr><tr><td>Run Every 15 Minutes Between 6 AM and 6 PM</td><td><code>*/15 6-18 * * *</code></td><td>Triggers the brokering run every 15 minutes from 6 AM to 6 PM.</td></tr></tbody></table>

### Viewing Brokering Runs

* **Chronological Sequence:** All brokering runs are displayed in a chronological sequence based on their next scheduled run time in the `Order Routing` App.

<figure><img src="../.gitbook/assets/Brokering Runs.png" alt=""><figcaption><p>Brokering Runs in Order Routing App</p></figcaption></figure>

* **Run Details:** Click on a specific run to open its details.

<figure><img src="../.gitbook/assets/Run details (1).png" alt=""><figcaption><p>Brokering Run Details</p></figcaption></figure>

{% hint style="info" %}
To ensure your brokering run is operational, you need to change its status from **"Draft"** to <mark style="color:green;">**"Active"**</mark>.

By default, new brokering runs are set to **"Draft"**. Simply select <mark style="color:green;">**"Active"**</mark> from the dropdown to activate it, or revert an active run back to **"Draft"** if adjustments are needed.&#x20;

Ideally, activate the brokering run only once you've fully configured your routing, rules, and other settings.
{% endhint %}

Understanding how to view, schedule, and manage brokering runs is essential for optimizing your order routing strategies.

Now, let's understand about [routings](routings.md) within a brokering run.
