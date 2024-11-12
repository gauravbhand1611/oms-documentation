---
icon: gears
description: >-
  This guide will help you understand how to manage and route orders efficiently
  using HotWax Commerce’s Order Routing App, optimizing order fulfillment
  strategies.
---

# Order Routing

## What is Order Routing?

Sophisticated order routing is essential for retailers handling multiple sales channels and fulfillment locations. It ensures that each order is fulfilled from the most optimal location, factoring in considerations such as shipping method, proximity to the customer, inventory levels, fulfillment capabilities, and options for splitting orders across locations. Effective order routing helps retailers achieve faster delivery times, reduce shipping costs, and maintain balanced inventory across all locations.

## What is Configurable Order Routing?

Configurable order routing takes traditional routing a step further by allowing retailers to customize and fine-tune order routing across their fulfillment network. Instead of depending on a fixed set of rules, configurable routing uses a brokering algorithm that evaluates orders and fulfillment options against a series of sequential rule sets, each with specific conditions.

This high level of customization enables retailers to create order routing that aligns with their unique business needs, and adjust routing parameters in real time without requiring external support. Retailers can optimize factors such as fulfillment costs, inventory distribution, and workload across locations, offering a strategic approach to order management. For scenarios where an order doesn’t meet the criteria of any rule set, configurable routing allows retailers to define specific actions to manage all unfillable orders, ensuring no order is left without a resolution.

This dynamic approach to order routing also ensures that retailers can adapt quickly to evolving market conditions and customer expectations.

## Configurable Order Routing App

HotWax Commerce's highly dynamic and configurable Order Routing App provides a structured framework for managing order routing with flexibility. The app enables retailers to define how orders are routed across their fulfillment network.

<div data-full-width="false">

<figure><img src="../.gitbook/assets/order routing framework.png" alt=""><figcaption><p>Brokering Framework in HotWax Commerce</p></figcaption></figure>

</div>

Below is a brief overview of the brokering framework, we will understand each component in more detail in the following sections.

Order routing is organized into three hierarchical levels:

*   [x] [<mark style="color:orange;">**Brokering Runs**</mark>](brokeringruns.md)



    A Brokering Run is the highest level of organization for your order routing and lets you control the frequency of routing based on business requirements. Each brokering run can have a unique schedule and route different batches of orders to align with varying fulfillment priorities.\


    For example, a brokering run can be scheduled every 5 minutes for high-priority batches of orders, such as those requiring same-day delivery to ensure fast routing fulfillment. For standard delivery orders (medium-priority), a different brokering run could be set for every 6 hours.



*   [x] [<mark style="color:orange;">**Routing Rules**</mark> ](routings.md)



    Within each brokering run, there can be multiple Routings. Each routing involves creating an order batch using filters and sorting for order lookup. We can also call a Routing as “Routing Rule”.\


    Example of routings in a “High-priority run”:

    * Same-Day Delivery Batch: One routing rule can manage a batch of orders requiring same-day delivery, ensuring prompt processing.
    * Next-Day Delivery Batch: Another routing rule can manage a batch of next-day delivery orders, meeting their specific SLA.
    * Two-Day Delivery Batch: A third routing rule can manage a batch of two-day delivery orders.

    These routing rules help retailers prioritize routing for specific order batches with different fulfillment timelines and conditions.



*   [x] [<mark style="color:orange;">**Inventory Rules**</mark>](rules.md)



    Within each routing, there can be multiple recursive Inventory Rules. These rules determine how inventory is allocated to each batch of orders. These rules define which fulfillment locations to choose, and control inventory allocation for orders based on proximity, inventory availability, and other strategic fulfillment criteria.



    For example,

    * Same-day delivery batch: Inventory Rules can prioritize allocating inventory from warehouses closest to the customer, such as within a 100-mile radius, to meet same-day SLAs. If inventory isn’t available within this range, a secondary rule can expand the range to 250 miles and also include stores.
    * Next-day delivery batch: For next-day orders, inventory can be allocated from warehouses within a 250-mile range, accommodating the one-day delivery SLA. Next inventory rules in sequence can apply if the first inventory rule doesn’t allocate inventory for all orders in the batch.

    By configuring inventory rules for each routing (batch of orders), retailers can optimize fulfillment location selection, ensuring that every order is fulfilled according to its unique needs.

In the following sections, we’ll dive deeper into each level, to understand how brokering runs, routing rules, and inventory rules work together to optimize order routing.
