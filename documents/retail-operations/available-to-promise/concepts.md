# Concepts

The first two concepts are Threshold and Safety Stock. Safety Stock in the OMS blocks a specified amount of available inventory at a facility from being made available for purchase. When Safety Stock is applied to a product at a global or "channel" level instead of a specific facility, it's known as a `Threshold`. To apply Safety Stock at a global level as a Threshold, configure a product's safety stock at the "Configuration" type facility of an inventory facility group. If there are multiple configuration facilities added to an inventory facility group, then their safety stocks will be compounded.

The next two concepts are BOPIS, buy online pickup in-store, and Shipping inventory. When configuring omnichannel rules for your inventory, not all products will always be available for BOPIS and Shipping, sometimes only offering one exclusively or neither. To allow independent configuration of each fulfillment option, every product has BOPIS and Shipping toggles at every facility where it is stocked. Similar to safety stock, global rules can be defined for products using the configuration facility. For example, if a product should not be allowed for pickup from any location, it can be toggled off for BOPIS at the configuration facility of that inventory facility group.

The Available to Promise app helps create common rules to manage each of these configurations for products and then also explains inventory availability for any product based on the rules configured for it.

## Understanding the cascade

Each omnichannel configuration, safety stock, threshold, BOPIS, and shipping can have multiple rules to target specific product and facility selections. Since there are multiple rules for each configuration type, products and facilities may overlap among rules. When this occurs, the last rule in the sequence of rules overrides previous rules for a unique combination of products and facilities.

For instance, if a retailer sets a rule to allow all shirts for BOPIS but also sets a specific rule to exclude black shirts from BOPIS, the retailer needs to ensure the black shirt rule is listed after the general shirt rule. Otherwise, the general rule will override the more specific one resulting in all shirts, including black ones, being available for BOPIS.
