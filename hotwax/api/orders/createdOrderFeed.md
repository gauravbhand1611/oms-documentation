---
description: >-
  Discover how the created order feed JSON assists external systems in tracking
  and consuming new orders entering the OMS.
---

# Created Orders

The created order feed JSON helps external systems track new orders that are entering the OMS and consume them for their linked actions.

Here is a sample feed of that the created order feed looks like

```json
{
  "orders": [
    {
      "id": "#test02",
      "channel_type": "web",
      "external_id": 3409,
      "currency": "USD",
      "subtotal": 45.00,
      "tax_total": 5.85,
      "placed_at": "2023-07-08T12:08:34.000Z",
      "shipping_tax_code": "AVATAX",
      "shipping_service_level": "STANDARD_UPS",
      "shipping_total": 0.00,
      "discounts": [],
      "discount_total": 30,
      "channel": "BDC",
      "customer_id": 5320856,
      "customer_email":"appurva.jain@hotwax.co",
      "payment_account": {
        "payment_method": "credit_card",
        "payment_provider": "shopify",
        "amount":"45.00"
      },
      "billing_address": {
        "name": "Appurva Jain",
        "address_line_1": "175 S Main St Suite",
        "address_line_2": "",
        "city": "Salt Lake City",
        "state": "UT",
        "country": "US",
        "zip_code": "84111",
        "phone": "18006984637"
      },
      "shipping_address": {
        "name": "Appurva Jain",
        "address_line_1": "175 S Main St Suite 1310123",
        "address_line_2": "",
        "city": "Salt Lake City",
        "state": "UT",
        "country": "US",
        "zip_code": "84111",
        "phone": "18006984637"
      },
      "items": [
        {
          "id": 101,
          "external_id": "",
          "product_id": "1110352-010-L",
          "pricebook_price": 45.00,
          "quantity": 1,
          "tax": 5.85,
          "tax_code": "AVATAX",
          "tag": "",
          "closed": "",
          "discounts": [],
          "shipping_service_level": "STANDARD_UPS",
          "item_discounts":0.0,
          "order_discounts":0.0,
          "status":"opened",
          "extended_attributes": [
            {
                "name":"requires_shipping",
                "value":"True"
            }
          ]
        }
      ]
    }
  ]
}
```
