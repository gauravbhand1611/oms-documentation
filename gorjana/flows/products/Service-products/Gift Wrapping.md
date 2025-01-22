# Gift Wrapping at Gorjana

Gorjana offers customers the option to add a personal touch to their orders by selecting gift wrap for their items.

## Gift Wrap Process

### Selecting Gift Wrap Items
- Customers select the items they want to gift wrap.  
- Customers choose whether they want the items wrapped together or separately.  

### Choosing the Wrapping Style
- Customers select the gift wrapper design (e.g., **"With Love Wrapper"**).  

### Adding a Gift Note (Optional)
- Customers have the option to add a personalized note that will appear on the gift.  

## Order Handling
The order handling process smoothly manages gift wrapping choices from Shopify to HotWax OMS and then to NetSuite, making the fulfillment process efficient and automated.

---

### 1. Shopify Order Properties
Gift wrap selections are stored as line item properties in Shopify. Orders with gift wrap contain the following details:

#### Order Item
- **Wrapper Name**: Indicates the selected wrapper (e.g., **"With Love"**) for the item in the order.  

#### Additional Details
- **Gift Wrap Option**: Indicates whether the items are wrapped together or separately, stored in the `note_attributes` of the Shopify JSON (e.g., **"Gift Wrap Items Together"**).  
- **Gift Wrap Note**: Contains the personalized message from the customer, found in the order note.  

---

### 2. Order Import into HotWax OMS
Orders are imported into HotWax OMS via the **"Custom Order Import" NiFi flow**, where a Groovy script runs to verify the order details during the import process.  

#### If the Order Includes "Gift Wrap Together"
- The first item's external ID is used as a reference.  
- The reference ID is applied to all subsequent items with the **"Gift Wrap"** property.  
- This ensures that all items are grouped together for wrapping.  

#### If the Order Specifies "Gift Wrap Separately"
- The **"Gift Wrap"** property is added to each item individually.  
- Items are not grouped together, ensuring separate wrapping.  

---

### 3. Gift Wrap Handling in NetSuite
In NetSuite, the gift wrap details are stored as follows:  

#### Memo (Message Note)
- Contains the **Gift Wrap Note** (personalized message).  

#### Custom Gift Wrap Option
- Indicates whether the items are to be wrapped together or separately.  

#### Item Level Details
- **Gift Wrap**: Yes (indicates the item is gift wrapped).  
- **Gift Wrapper Text**: Specifies the selected wrapping style (e.g., **"With Love"**).  

---
<details>
  <summary> <h3>Sample of Shopify JSON:</h3></summary>

```json
{
  "order": {
    "note": "happy birthday",
    "note_attribute": [
      {
        "name": "Gift wrap option",
        "value": "Gift wrap items together"
      }
    ],
    "line_items": [
      {
        "properties": [
          {
            "name": "Gift wrap",
            "value": "with love"
          }
        ]
      }
    ]
  }
}
```
</details>


