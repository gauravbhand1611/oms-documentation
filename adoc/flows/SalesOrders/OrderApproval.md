---
description: >-
  Learn about the two-step order approval process at ADOC, ensuring orders are
  processed for fulfillment only if they meet specific criteria for updated
  customer information and shipping addresses.
---

# Order Approval Process in ADOC

Order approval in ADOC ensures that all necessary validations are met before processing orders for fulfillment. The process involves two key steps:

1. **Shipping Address Update**: The shipping address is updated via an API call from NiFi.
2. **Generation of SHIPTO_ADDRESS_UPDATED Attribute**: After the address update, a new attribute, `SHIPTO_ADDRESS_UPDATED`, is generated with a value of `true`.

For shipping orders, approval is granted only when the order contains two mandatory attributes:
- **Customer ID** (government-mandated)
- **SHIPTO_ADDRESS_UPDATED** (set to `true`), confirming that both the customer’s identity and shipping address have been verified.

For store pickup orders, the process is slightly different. Since these orders do not require shipping, the `SHIPTO_ADDRESS_UPDATED` attribute is not necessary. Store pickup orders can bypass this requirement while still meeting other necessary validation criteria, simplifying the approval process.

## Enriching Shipping Address Workflow for Municipio or Canton Values

In the earlier process, the system identified orders that lacked the `SHIPTO_ADDRESS_UPDATED` attribute. It then validated the municipio or canton values against CarrierGeoMapping records. If a match was found in the GeoName column with the correct carrier ID, the postal address was updated with the appropriate values.

### Recent Updates in the Approval Process

Recent updates have streamlined the process with the following changes:

- **Direct Municipio Values from Shopify**: ADOC now sends the correct municipio values directly from Shopify, ensuring compatibility with integrated carriers. These values are used to update the city and ZIP fields without the need for further validation.
- **CarrierGeoMapping Use**: Address validation has been removed for all countries, with CarrierGeoMapping now only being used for Honduras (HN) to ensure compatibility with carrier C807. For C80, the Geo ID for the province is essential, and CarrierGeoMapping supplies the required ID, as Shopify does not provide this information directly.

## Faster Data Import for Approval

To enhance efficiency, attributes such as municipio, customer ID, and others are now imported directly via note attributes in Shopify order imports. Previously, this data was fetched through metafields, which required additional API calls. By receiving this information directly with the order, the process has become faster and more efficient, reducing the need for extra API calls.

## Order Approval Criteria

A scheduled process checks for two attributes before approving orders for fulfillment:
- **Customer ID**: Any value.
- **SHIP_TO_ADDRESS_UPDATED**: Set to `true`.

Both conditions must be satisfied for the order to qualify for fulfillment approval.

## Job Details
- **Config ID**: IMP_APR_SALES_ORD

