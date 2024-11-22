# Multichannel ATP Computation

Retail brands often sell products across various channels such as offline stores, marketplaces, social media, and their own websites. However, managing inventory across these different platforms can be challenging, as each channel has its own set of rules and penalties. For instance, marketplaces like Amazon impose charges for delayed fulfillment or rejected orders. To prevent overselling and efficiently manage inventory, many brands allocate separate Available-to-Promise (ATP) inventories for each sales channel.

This section explains how to set up inventory channels, link facilities to those channels, and configure product inventory for each channel.

## Create an Inventory Channel

In HotWax Commerce, Inventory Channels combine Facility Groups and Configuration Facilities. Follow these steps to create a new inventory channel:

1. **Access the Inventory Channels Page**:
   - From the left-side menu bar of the ATP app, go to the `Inventory Channels` page to view existing channels.

2. **Create a New Channel**:
   - Click the blue `plus` button at the bottom-right of the page to open the `Create Channel Group` window.
   - Enter a name for the new Inventory Channel. The channel ID will automatically populate with the same name.
   - Write a description of the channel to explain its purpose, such as "Inventory channel facility group to publish ATP on Shopify."

### Add a Channel Configuration Facility

The Configuration Facility is a virtual facility that plays a critical role when managing product-level ATP configurations at a network-wide scale. Therefore when configuring network-level product ATP rules , you need to add a channel-level configuration facility:

1. **Create a New Configuration Facility**:
   - Click on the `Create New` option in the dropdown menu under the group-level configuration to create a new configuration for the channel.
   
2. **Select an Existing Virtual Facility**:
   - When you setup HotWax Commerce, you already get one configuration facility by default. If you are adding such an existing virtual facility, you can choose it from the dropdown menu.

### Link Facilities to the Channel

To link facilities to an inventory channel:

1. **Open the Facilities Section**:
   - Click the `Options` button in the `Facilities` section to open the `Link Facilities` window.

2. **Select the Facilities for ATP Computation**:
   - Check the boxes for the facilities you want to include in the ATP computation for that channel. This action will create a facility group for the inventory channel.

**Example**:  
If a Canadian retailer has two Shopify stores—one in the US and another in Canada—and they want to compute ATP for the US store using only their warehouses, they would link the warehouses to the inventory channel. This would create a facility group that includes only the warehouses.
