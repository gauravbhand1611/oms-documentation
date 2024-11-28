# Scheduling Inventory Rules

Retailers can manage the scheduling of the job responsible for ATP (Available to Promise) rules from the top of the page. By default, ATP rule jobs are scheduled to run at midnight to ensure ATP calculations occur when store traffic is minimal, making the inventory ATP ready before the start of the day.

Retailers can view the history of job runs, disable a job, or run a job once by selecting the relevant option from the job's overflow menu.

Each rule card provides an overview of configurations and product facility selections. Retailers can click the "Edit rule" button to modify rule configurations.  
The rule configuration can be adjusted by toggling the store pickup and shipping options on or off, or by setting values for threshold and safety stock by clicking on the number chips.

## Understanding the Cascade of Inventory Rule

Each omnichannel configuration, safety stock, threshold, BOPIS, and shipping can have multiple rules to target specific product and facility selections. Since there are multiple rules for each configuration type, products and facilities may overlap among rules. When this occurs, the last rule in the sequence of rules overrides previous rules for a unique combination of products and facilities.


Consider a retailer who wants to set different inventory thresholds for general shirts and blue shirts. The retailer sets a threshold of 5 for all shirts, allowing a minimum of 5 shirts to be available as network-level buffer stock. However, for blue shirts, the retailer wants to increase the threshold to 10 to ensure enough is available for demand.

To achieve this, the retailer would create two rules:

1. **General Shirt Rule** (Threshold set to 5 shirts)  
   - Applies to all shirts, allowing a minimum of 5 shirts to be available as network-level buffer stock.

2. **Blue Shirt Rule** (Threshold set to 10 shirts)  
   - Applies only to blue shirts, requiring a minimum of 10 blue shirts to be available as network-level buffer stock.

These rules should be listed in the correct sequence to ensure that the specific blue shirt rule overrides the general shirt rule for blue shirts while maintaining the broader threshold for all other shirts.

A balloon icon in the bottom right corner allows retailers to collapse or expand the inventory rules. Retailers can collapse the inventory rules to rearrange the sequencing of the inventory rules according to the cascade.

{% embed url ="https://youtu.be/EYvFXLzoe88" %} Change Rule Sequence {% endembed %}

# Publishing ATP to a Channel

Retailers managing multiple online sales channels must decide which facility group will publish its inventory to which channel. This setup ensures that only selected facilities' inventory will be made available on the defined sales channels. Follow the steps below to publish inventory to your Shopify store using the Available-to-Promise (`ATP`) app.

## Steps to Publish Inventory:

#### Access the `ATP` App
Navigate to the `ATP` app within HotWax Commerce and locate the `Inventory Channel` page.

#### Go to the `Publish` Tab
Once on the `Inventory Channel` page, click on the `Publish` tab to proceed. This tab will display a list of Shopify stores connected to the product store.

#### Select Run Time and Frequency
Here, you can choose the `Run Time` and the `Frequency` (daily, weekly, etc.) to push inventory updates to Shopify. This setting helps define when the inventory will be published.

#### Choose the Inventory Channel
From the dropdown menu, select the inventory channel from which you want to publish. This corresponds to the facility group whose inventory will be pushed to the Shopify store.

#### Save and Schedule the Job
After selecting the appropriate options, click `Save Changes` to finalize the settings. This will schedule the inventory publishing job as per the selected time and frequency.





