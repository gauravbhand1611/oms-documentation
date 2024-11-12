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

<figure><img src="../.gitbook/assets/order routing framework.png" alt=""><figcaption><p>Brokering Rules in HotWax Commerce</p></figcaption></figure>

</div>

Below is a brief overview of the brokering framework, we will understand each component in more detail in the following sections.

Order routing is organized into three hierarchical levels:

<table data-view="cards"><thead><tr><th></th><th></th><th></th><th data-hidden data-card-target data-type="content-ref"></th><th data-hidden data-card-cover data-type="files"></th></tr></thead><tbody><tr><td><mark style="color:orange;"><strong>Runs</strong></mark></td><td>A "Run" is the highest level of organization for your brokering rules. It represents a set of rules that will be applied to incoming orders during a specific time or under certain conditions.</td><td></td><td><a href="brokeringruns.md">brokeringruns.md</a></td><td></td></tr><tr><td><mark style="color:orange;"><strong>Routings</strong></mark></td><td>Within each run, you have "Routings." Think of routings as distinct pathways that different batch of orders can take based on predefined conditions.</td><td></td><td><a href="routings.md">routings.md</a></td><td></td></tr><tr><td><mark style="color:orange;"><strong>Rules</strong></mark></td><td>At the lowest level, you have individual "Rules" within each routing. These are the specific criteria that determine how inventory is allocated during order routing.</td><td></td><td><a href="rules.md">rules.md</a></td><td></td></tr></tbody></table>

In the following sections, we’ll dive deeper into each level, to understand how brokering runs, routing rules, and inventory rules work together to optimize order routing.
