# Table of Contents

## Tax Recalculation with Avalara
Integrate HotWax OMS with Avalara to dynamically recalculate taxes based on retailer and customer locations, ensuring accurate tax compliance.

### Tax Discrepancies
Decide on policies for handling tax discrepancies, balancing customer satisfaction with legal compliance.

## Return and Exchange Process
Mephisto used Redo for returns and exchange processing.

### Returns Management
Integrate Redo with HotWax OMS to authorize returns and route them back to the original fulfilling retailer.

### Exchange Routing
Automatically route exchange orders to the original fulfillment location, with options to reroute if necessary.

## Inventory Visibility and Historical Tracking
Provide comprehensive visibility into inventory levels and historical data to support decision-making.

### Real-Time Data
Offer dashboards and API access displaying current on-hand inventory per location.

### Historical Access
Allow querying of past inventory levels with policies in place for data retention and historical tracking.

## Model Stock/Reorder Points
Set minimum inventory thresholds and automate reordering to maintain optimal stock levels.

### Minimum Levels
Define model stock levels for each SKU and location to prevent shortages.

### Reordering Alerts
Notify purchasing teams when inventory approaches reorder points, using historical sales data for accuracy. Report: Transfer Order Recommendations

## Transfer Order Recommndation
Effectively balance inventory levels across facilities by identifying stock shortages and recommending transfers from facilities with surplus. The process involves four main steps:

1. **Identify Facilities with Insufficient Stock**: Pinpoints facilities that need inventory replenishment.
2. **Find Potential Source Facilities**: Identifies facilities with surplus stock that can fulfill the need.
3. **Evaluate Transfer Feasibility**: Ensures that the source facility can afford to make the transfer without falling below its own minimum inventory requirements.
4. **Recommend Transfers**: Recommends optimal transfers based on the evaluation, including the value of the shipment.

## Inventory Display Rules Enforcement
Control the visibility of inventory based on discount levels to maintain brand integrity and pricing strategies.

### Discount Restrictions
Implement business rules to hide retailer inventory when discounts exceed 40%.

## Financial Reporting and Settlement
Streamline financial operations with detailed reporting and needed settlements for retailers.

### Bi-Weekly Reports
Generate automated reports every two weeks detailing amounts owed to each independent retailer.

## Net Transfers Calculation Between Facilities
Calculate and analyze the net movement of products between facilities to optimize inventory distribution.
Determine the total net transfers of products between Mephisto retail stores by aggregating shipment data.

### Key Concepts
- **Outgoing Transfers**: Shipments moving products from one facility to another.
- **Incoming Transfers**: Shipments where products are received from another facility.
- **Net Transfers**: The difference between outgoing and incoming transfers for each product.

An SQL query will aggregate these shipments to calculate the overall net quantity transferred.
