---
description: >-
   This document provides steps to diagnose and resolve issues when orders fail to transfer from Shopify to HotWax Commerce (OMS).
---

# Resolving Order Import Issues Between HotWax Commerce and Shopify

When an order fails to import from Shopify to HotWax, it typically does not appear in the OMS, and an error is logged in the EXIM Import record for Shopify orders in HotWax Commerce. Several factors can contribute to these errors, such as incompatibility of exported data, API endpoint issues, or the absence of required meta fields during order processing. A report titled **The Shopify Order Import Error Report** details these failures, outlining specific errors generated by the system. These errors can usually be resolved by the following steps:

## Scenarios and Steps to Resolve

### Verification: Check if the order is available in HotWax Commerce
- **Navigate to OMS**: Log in to OMS.
- **Check Order**: Search the order on the OMS find order page to verify if the order is already available in OMS.

### Scenario 1: Order Not Available in OMS

#### Step 1: Re-import the Order by ID in OMS
1. **Log in to OMS**: Use your username and password to log in to Hotwax Commerce `OMS`.
2. **Navigate to the Import Section**:
   - Go to `MDM > EXIM` in from the hamburger menu.
   - Navigate to `Shopify Jobs` and select `Import Shopify Order` under the Order Management tab.
3. **Re-import the Order**:
   - Select the Shopify config and enter the `Shopify Order ID`.
   - Run the job by clicking the `Run` button.
4. **Verify Successful Import**:
   - To verify the order's successful import, go to `MDM > EXIM`.
   - Navigate to Shopify Jobs and click on `Shopify Order MDM` under the MDM tab.

### Scenario 2: Order Fails to Import After Re-import Attempt

1. If the order still fails to import, troubleshoot the import failure by checking the error logs in the EXIM Import record for detailed errors. Some possible failure reasons are:
    - Connection timeout.
    - Transaction is empty.
    - [Special character errors](https://docs.hotwax.co/documents/retail-operations/orders/order-management/troubleshooting/order-import)
    - Valid fields are missing in order JSON.

2. Identify the issue's source, determining if it originates from Shopify, the integration process, or HotWax Commerce.
3. If the cause remains unclear, reach out to HotWax Commerce support, providing them with the error logs for efficient troubleshooting.
