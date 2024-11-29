# Earring Flexibility in Gorjana

## Overview
Gorjana allows customers to purchase earrings as either a single piece or a pair. HotWax Commerce supports this flexibility with a product setup that efficiently handles both options.

---

## How Pairing Works

### Single Earring
- **SKU:** `232-009-185-G`
- Represents a single earring.
- Customers can order one unit of this SKU.

### Paired Earrings (Kit Product)
- **SKU:** `232-010-185-G`
- Represents a pair of earrings and acts as the **parent product**.
- Includes SKU `232-009-185-G` as a component with a **quantity of two**.

---

## Order Example
If a customer orders a pair of earrings, they select SKU `232-010-185-G` as the product.  
- **System Tracking:** The system tracks this order as two units of SKU `232-009-185-G`.  
- **Benefit:** This setup ensures the Order Management System (OMS) treats the pair as a grouped item while maintaining accurate inventory tracking for each individual earring.

---

## Example JSON
The following JSON represents the data structure for a paired earring (kit product):

```json
{
  "Product": {
    "productId": "12254",
    "internalName": "213-010-34-G",
    "primaryProductCategoryId": "10002",
    "productTypeId": "MARKETING_PKG_PICK"
  },
  "ProductAssoc": {
    "productAssocTypeId": "PRODUCT_COMPONENT",
    "productIdTo": "12252",
    "quantity": "2.000000"
  }
}
