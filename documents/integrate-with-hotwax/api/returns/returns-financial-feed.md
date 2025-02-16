---
description: >-
  Learn about the Returns Financial Feed, a JSON-formatted return-wise feed generated from HotWax Commerce (HC) OMS.
---

# Returns Financial Feed

## Introduction

The Returns Financial Feed, generated by HotWax, is a JSON-formatted feed containing details about returns created against orders, originating from both online and in-store channels. The feed is used to post the return details to ERP systems for finanacial reconciliation. The feed is transformed - by HotWax's intermediary systems - in a way that allow integrated third-party systems, such as the ERP systems, to ingest the generated data.

## Customization

The Returns Financial Feed has certain out-of-the-box parameters that allow users to generate the feed as per their requirements.

| **Parameter**           | **Description**                                                                                                                                                  |
|-------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `orderId`               | Filter return details for a specific HC order ID.                                                                                                                 |
| `returnId`              | Filter return details for a specific HC return ID.                                                                                                                |
| `sinceReturnDate`       | Filter returns created in Shopify after a specific date.                                                                |
| `sinceReturnCompletedDate` | Filter returns completed in HotWax Commerce after a specific date. Corresponds to the completion date for return items in HotWax Commerce.              |
| `sinceEntryDate`        | Filter returns created after a specific date in HotWax Commerce. Corresponds to the entry date in HotWax Commerce.                                               |
| `productStoreIds`       | Filter returns for for particular product store IDs to generate brand-specific feeds. For example, "WSC_STORE".                                                                           |
| `returnChannelEnumId`   | Filter returns made from different channels such as e-commerce returns or in-store returns.                                                                  |
| `customParametersMap`   | Filter returns using custom conditions, allowing flexibility in specifying new conditions. For example, `{"returnReasonId_op": "empty", "returnReasonId_not": "Y"}`.        |
| `optimize`              | Optimize the query or process for better performance.                                                                                                           |


<details>

<summary> Sample Returns feed</summary>

```json
[
  {
    "returnId": "10821",
    "returnItemSeqId": null,
    "returnReasonId": null,
    "returnReasonNote": null,
    "shopId": "DEMO_STORE",
    "orderItemRequestedShipMethTypeId": null,
    "entryDate": "2024-09-23T14:01:16-05:00",
    "returnDate": "2024-09-20T12:17:33-05:00",
    "returnChannelEnumId": "ECOM_RTN_CHANNEL",
    "orderId": null,
    "orderItemSeqId": null,
    "returnItemAmountTotal": null,
    "statusId": null,
    "completedDatetime": "2024-09-23T13:41:36-05:00",
    "productStoreId": "WSC_STORE",
    "orderName": null,
    "productStoreExternalId": "7",
    "customerPartyId": "10371",
    "returnStatusId": "RETURN_COMPLETED",
    "returnTypeId": null,
    "isShippingChargesSent": "Y",
    "returnAdjustments": [],
    "customerPartyIdentifications": [
      {
        "partyIdentificationTypeId": "NETSUITE_CUSTOMER_ID",
        "lastUpdatedStamp": "2024-02-17T05:20:19-05:00",
        "partyId": "10371",
        "idValue": "8862402"
      },
      {
        "partyIdentificationTypeId": "SHOPIFY_CUST_ID",
        "idValue": "7856592781596",
        "partyId": "10371",
        "lastUpdatedStamp": "2024-02-17T04:50:07-05:00"
      }
    ],
    "tenderAmount": 179.68,
    "payments": [
      {
        "paymentMethodCode": null,
        "paymentMode": null,
        "amount": 179.68,
        "manualAuthCode": null,
        "orderId": "DEV12410",
        "applicationIdentifier": null,
        "manualRefNum": "7444160020764",
        "statusId": "PAYMENT_REFUNDED",
        "requestId": null,
        "paymentMethodTypeId": "EXT_SHOP_MANUAL",
        "createdDate": "2024-11-18T06:01:16-05:00",
        "paymentMethodDescription": "Manual",
        "returnId": "10821"
      }
    ],
    "returnItems": [
      {
        "returnId": "10821",
        "returnItemSeqId": "00101",
        "orderId": "DEV12410",
        "orderItemSeqId": "00102",
        "returnItemPrice": 79.5,
        "returnQuantity": 1,
        "returnReasonId": "STYLE",
        "productId": "10003",
        "returnReasonNote": null,
        "returnItemStatusId": "RETURN_COMPLETED",
        "orderItemRequestedShipMethTypeId": "STANDARD",
        "taxCode": "PC040100",
        "orderItemExternalId": "15300755063068",
        "orderName": "#HCDEV4364",
        "facilityExternalId": "94",
        "facilityId": "BROADWAY",
        "facilityTypeId": "RETAIL_STORE",
        "parentFacilityTypeId": "PHYSICAL_STORE",
        "productStoreExternalId": "7",
        "currencyUom": "USD",
        "customerPartyId": "10371",
        "shipToContactMechId": null,
        "returnDate": "2024-09-23T13:41:36-04:00",
        "returnExternalId": "5816353052",
        "returnTypeId": "RTN_REFUND",
        "receivedQuantity": null,
        "completedDatetime": "2024-11-18T06:01:16-05:00",
        "shipTo": null,
        "billTo": {
          "longitude": -79.38066,
          "houseNumberExt": null,
          "postalCodeGeoId": null,
          "stateProvinceGeoCode": "ON",
          "houseNumber": null,
          "postalCodeExt": null,
          "attnName": null,
          "countyGeoId": null,
          "cityGeoId": null,
          "postalCode": "L3V 1P5",
          "latitude": 44.606503,
          "stateProvinceGeoId": "ON",
          "contactMechId": "20656",
          "address2": null,
          "toName": "John Doe",
          "encodedAddressKey": null,
          "stateProvinceGeoName": "Ontario",
          "address1": "746 Atherley Road",
          "countryGeoCode": "CA",
          "countryGeoId": "CAN",
          "directions": null,
          "city": "Orillia",
          "municipalityGeoId": null,
          "countryGeoName": "Canada",
          "geoPointId": null
        },
        "productIdentifications": [
          {
            "fromDate": "2024-02-26T04:12:21-05:00",
            "lastUpdatedStamp": "2024-02-26T04:12:21-05:00",
            "idValue": "6104.42.00.10",
            "goodIdentificationTypeId": "HS_CODE",
            "productId": "10003",
            "thruDate": null
          },
          {
            "fromDate": "2024-01-08T11:20:16-05:00",
            "goodIdentificationTypeId": "NETSUITE_PRODUCT_ID",
            "idValue": "44509",
            "productId": "10003",
            "lastUpdatedStamp": "2024-08-13T01:37:02-04:00",
            "thruDate": null
          },
          {
            "lastUpdatedStamp": "2024-02-09T06:34:09-05:00",
            "goodIdentificationTypeId": "SHOPIFY_PROD_ID",
            "fromDate": "2024-01-08T06:53:02-05:00",
            "productId": "10003",
            "idValue": "47264706134300",
            "thruDate": null
          },
          {
            "lastUpdatedStamp": "2024-02-09T06:34:09-05:00",
            "idValue": "2120096-1DD-M",
            "fromDate": "2024-01-08T06:53:02-05:00",
            "productId": "10003",
            "goodIdentificationTypeId": "SHOPIFY_PROD_SKU",
            "thruDate": null
          },
          {
            "idValue": "2120096-1DD-M",
            "goodIdentificationTypeId": "SKU",
            "fromDate": "2024-01-08T06:53:02-05:00",
            "lastUpdatedStamp": "2024-02-09T06:34:09-05:00",
            "productId": "10003",
            "thruDate": null
          },
          {
            "lastUpdatedStamp": "2024-01-08T06:53:02-05:00",
            "idValue": "2120096-1DD-M",
            "fromDate": "2024-01-08T06:53:02-05:00",
            "goodIdentificationTypeId": "UPCA",
            "productId": "10003",
            "thruDate": null
          }
        ],
        "returnItemAdjustments": [
          {
            "customerReferenceId": null,
            "shipGroupSeqId": "_NA_",
            "correspondingProductId": null,
            "createdDate": "2024-09-23T08:41:26-04:00",
            "comments": "CANADA GST/TPS",
            "includeInShipping": null,
            "lastUpdatedStamp": "2024-11-18T06:01:16-05:00",
            "orderId": "DEV12410",
            "exemptAmount": null,
            "productPromoId": null,
            "taxAuthPartyId": null,
            "lastModifiedByUserLogin": null,
            "returnAdjustmentTypeId": "RET_SALES_TAX_ADJ",
            "description": "Return Sales Tax",
            "primaryGeoId": null,
            "taxAuthGeoId": null,
            "secondaryGeoId": null,
            "orderAdjustmentId": "15832",
            "returnId": "10821",
            "sourcePercentage": 0.05,
            "returnAdjustmentId": "10702",
            "returnItemSeqId": "00101",
            "createdByUserLogin": "hotwax.user",
            "lastModifiedDate": null,
            "sourceReferenceId": null,
            "productPromoRuleId": null,
            "productFeatureId": null,
            "taxAuthorityRateSeqId": null,
            "overrideGlAccountId": null,
            "includeInTax": null,
            "productPromoActionSeqId": null,
            "amount": 3.98,
            "returnTypeId": "RTN_REFUND"
          },
          {
            "customerReferenceId": null,
            "shipGroupSeqId": "_NA_",
            "correspondingProductId": null,
            "createdDate": "2024-09-23T08:41:26-04:00",
            "includeInShipping": null,
            "orderId": "DEV12410",
            "exemptAmount": null,
            "comments": "ONTARIO HST",
            "productPromoId": null,
            "taxAuthPartyId": null,
            "lastModifiedByUserLogin": null,
            "returnAdjustmentTypeId": "RET_SALES_TAX_ADJ",
            "description": "Return Sales Tax",
            "primaryGeoId": null,
            "taxAuthGeoId": null,
            "secondaryGeoId": null,
            "orderAdjustmentId": "15833",
            "returnId": "10821",
            "returnItemSeqId": "00101",
            "returnAdjustmentId": "10703",
            "sourcePercentage": 0.08,
            "amount": 6.36,
            "createdByUserLogin": "hotwax.user",
            "lastModifiedDate": null,
            "sourceReferenceId": null,
            "productPromoRuleId": null,
            "productFeatureId": null,
            "taxAuthorityRateSeqId": null,
            "overrideGlAccountId": null,
            "includeInTax": null,
            "productPromoActionSeqId": null,
            "lastUpdatedStamp": "2024-11-18T06:01:16-05:00",
            "returnTypeId": "RTN_REFUND"
          }
        ],
        "facilityGroupMembers": [
          {
            "facilityGroupId": "AUTO_SHIPPING_LABEL",
            "fromDate": "2024-10-05T07:58:20-04:00",
            "sequenceNum": null,
            "lastUpdatedStamp": "2024-10-05T07:58:24-04:00",
            "facilityId": "BROADWAY",
            "thruDate": null
          },
          {
            "lastUpdatedStamp": "2024-10-15T11:08:42-04:00",
            "fromDate": "2024-10-15T11:08:42-04:00",
            "sequenceNum": null,
            "facilityId": "BROADWAY",
            "facilityGroupId": "FAC_GRP",
            "thruDate": null
          },
          {
            "fromDate": "2024-08-26T03:30:47-04:00",
            "facilityGroupId": "ONLINE_FAC_GRP",
            "sequenceNum": null,
            "facilityId": "BROADWAY",
            "lastUpdatedStamp": "2024-08-26T03:30:47-04:00",
            "thruDate": null
          },
          {
            "facilityGroupId": "OMS_FULFILLMENT",
            "sequenceNum": null,
            "fromDate": "2024-01-08T04:11:40-05:00",
            "lastUpdatedStamp": "2024-01-08T04:11:40-05:00",
            "facilityId": "BROADWAY",
            "thruDate": null
          },
          {
            "facilityGroupId": "PICKUP",
            "sequenceNum": null,
            "lastUpdatedStamp": "2024-11-13T08:50:58-05:00",
            "facilityId": "BROADWAY",
            "fromDate": "2024-11-13T08:50:58-05:00",
            "thruDate": null
          },
          {
            "fromDate": "2024-06-27T10:42:13-04:00",
            "sequenceNum": null,
            "facilityGroupId": "PICKUP",
            "lastUpdatedStamp": "2024-06-27T10:42:13-04:00",
            "facilityId": "BROADWAY",
            "thruDate": null
          },
          {
            "facilityGroupId": "STORES_FAC_GRP",
            "lastUpdatedStamp": "2025-01-16T14:51:05-05:00",
            "sequenceNum": 5,
            "facilityId": "BROADWAY",
            "fromDate": "2025-01-16T14:51:05-05:00",
            "thruDate": null
          },
          {
            "sequenceNum": null,
            "lastUpdatedStamp": "2024-07-25T05:20:32-04:00",
            "facilityGroupId": "US_INVENTORY",
            "fromDate": "2024-07-25T05:20:32-04:00",
            "facilityId": "BROADWAY",
            "thruDate": null
          },
          {
            "lastUpdatedStamp": "2024-03-20T06:13:09-04:00",
            "sequenceNum": null,
            "fromDate": "2024-03-20T06:13:09-04:00",
            "facilityId": "BROADWAY",
            "facilityGroupId": "_NA_",
            "thruDate": null
          }
        ]
      },
      {
        "returnId": "10821",
        "returnItemSeqId": "00102",
        "orderId": "DEV12410",
        "orderItemSeqId": "00101",
        "returnItemPrice": 79.5,
        "returnQuantity": 1,
        "returnReasonId": "UNWANTED",
        "productId": "10004",
        "returnReasonNote": null,
        "returnItemStatusId": "RETURN_COMPLETED",
        "orderItemRequestedShipMethTypeId": "STANDARD",
        "taxCode": "PC040100",
        "orderItemExternalId": "15300755095836",
        "orderName": "#HCDEV4364",
        "facilityExternalId": "94",
        "facilityId": "BROADWAY",
        "facilityTypeId": "RETAIL_STORE",
        "parentFacilityTypeId": "PHYSICAL_STORE",
        "productStoreExternalId": "7",
        "currencyUom": "USD",
        "customerPartyId": "10371",
        "shipToContactMechId": null,
        "returnDate": "2024-09-23T13:41:36-04:00",
        "returnExternalId": "5816353052",
        "returnTypeId": "RTN_REFUND",
        "receivedQuantity": null,
        "completedDatetime": "2024-11-18T06:01:16-05:00",
        "shipTo": null,
        "billTo": {
          "longitude": -79.38066,
          "houseNumberExt": null,
          "postalCodeGeoId": null,
          "stateProvinceGeoCode": "ON",
          "houseNumber": null,
          "postalCodeExt": null,
          "attnName": null,
          "countyGeoId": null,
          "cityGeoId": null,
          "postalCode": "L3V 1P5",
          "latitude": 44.606503,
          "stateProvinceGeoId": "ON",
          "contactMechId": "20656",
          "address2": null,
          "toName": "John Doe",
          "encodedAddressKey": null,
          "stateProvinceGeoName": "Ontario",
          "address1": "746 Atherley Road",
          "countryGeoCode": "CA",
          "countryGeoId": "CAN",
          "directions": null,
          "city": "Orillia",
          "municipalityGeoId": null,
          "countryGeoName": "Canada",
          "geoPointId": null
        },
        "productIdentifications": [
          {
            "idValue": "6104.42.00.10",
            "goodIdentificationTypeId": "HS_CODE",
            "lastUpdatedStamp": "2024-02-26T04:12:21-05:00",
            "productId": "10004",
            "fromDate": "2024-02-26T04:12:21-05:00",
            "thruDate": null
          },
          {
            "idValue": "44508",
            "goodIdentificationTypeId": "NETSUITE_PRODUCT_ID",
            "lastUpdatedStamp": "2024-08-13T01:37:02-04:00",
            "productId": "10004",
            "fromDate": "2024-01-08T11:20:16-05:00",
            "thruDate": null
          },
          {
            "lastUpdatedStamp": "2024-02-12T01:54:01-05:00",
            "goodIdentificationTypeId": "SHOPIFY_PROD_ID",
            "productId": "10004",
            "idValue": "47264706101532",
            "fromDate": "2024-01-08T06:53:02-05:00",
            "thruDate": null
          },
          {
            "idValue": "2120096-1DD-L",
            "productId": "10004",
            "lastUpdatedStamp": "2024-02-12T01:54:01-05:00",
            "fromDate": "2024-01-08T06:53:02-05:00",
            "goodIdentificationTypeId": "SHOPIFY_PROD_SKU",
            "thruDate": null
          },
          {
            "idValue": "2120096-1DD-L",
            "goodIdentificationTypeId": "SKU",
            "productId": "10004",
            "lastUpdatedStamp": "2025-01-28T05:14:13-05:00",
            "fromDate": "2024-01-08T06:53:02-05:00",
            "thruDate": null
          },
          {
            "idValue": "2120096-1DD-L",
            "goodIdentificationTypeId": "SKU",
            "productId": "10004",
            "fromDate": "2024-01-08T06:53:02-05:00",
            "lastUpdatedStamp": "2024-02-12T01:54:01-05:00",
            "thruDate": null
          },
          {
            "idValue": "2120096-1DD-L",
            "productId": "10004",
            "goodIdentificationTypeId": "UPCA",
            "lastUpdatedStamp": "2025-01-28T05:14:13-05:00",
            "fromDate": "2024-01-08T06:53:02-05:00",
            "thruDate": null
          },
          {
            "idValue": "2120096-1DD-L",
            "lastUpdatedStamp": "2024-01-08T06:53:02-05:00",
            "productId": "10004",
            "goodIdentificationTypeId": "UPCA",
            "fromDate": "2024-01-08T06:53:02-05:00",
            "thruDate": null
          }
        ],
        "returnItemAdjustments": [
          {
            "customerReferenceId": null,
            "shipGroupSeqId": "_NA_",
            "correspondingProductId": null,
            "createdDate": "2024-09-23T08:41:26-04:00",
            "comments": "CANADA GST/TPS",
            "includeInShipping": null,
            "orderId": "DEV12410",
            "exemptAmount": null,
            "productPromoId": null,
            "taxAuthPartyId": null,
            "lastModifiedByUserLogin": null,
            "returnAdjustmentTypeId": "RET_SALES_TAX_ADJ",
            "description": "Return Sales Tax",
            "orderAdjustmentId": "15830",
            "primaryGeoId": null,
            "taxAuthGeoId": null,
            "secondaryGeoId": null,
            "returnId": "10821",
            "sourcePercentage": 0.05,
            "returnItemSeqId": "00102",
            "createdByUserLogin": "hotwax.user",
            "lastModifiedDate": null,
            "returnAdjustmentId": "10704",
            "sourceReferenceId": null,
            "productPromoRuleId": null,
            "productFeatureId": null,
            "taxAuthorityRateSeqId": null,
            "overrideGlAccountId": null,
            "lastUpdatedStamp": "2024-11-18T06:01:16-05:00",
            "includeInTax": null,
            "productPromoActionSeqId": null,
            "amount": 3.98,
            "returnTypeId": "RTN_REFUND"
          },
          {
            "customerReferenceId": null,
            "shipGroupSeqId": "_NA_",
            "correspondingProductId": null,
            "createdDate": "2024-09-23T08:41:26-04:00",
            "includeInShipping": null,
            "orderId": "DEV12410",
            "exemptAmount": null,
            "comments": "ONTARIO HST",
            "productPromoId": null,
            "taxAuthPartyId": null,
            "lastModifiedByUserLogin": null,
            "returnAdjustmentTypeId": "RET_SALES_TAX_ADJ",
            "description": "Return Sales Tax",
            "primaryGeoId": null,
            "taxAuthGeoId": null,
            "orderAdjustmentId": "15831",
            "secondaryGeoId": null,
            "returnId": "10821",
            "sourcePercentage": 0.08,
            "returnItemSeqId": "00102",
            "amount": 6.36,
            "createdByUserLogin": "hotwax.user",
            "lastUpdatedStamp": "2024-11-18T06:01:16-05:00",
            "lastModifiedDate": null,
            "sourceReferenceId": null,
            "returnAdjustmentId": "10705",
            "productPromoRuleId": null,
            "productFeatureId": null,
            "taxAuthorityRateSeqId": null,
            "overrideGlAccountId": null,
            "includeInTax": null,
            "productPromoActionSeqId": null,
            "returnTypeId": "RTN_REFUND"
          }
        ],
        "facilityGroupMembers": [
          {
            "facilityGroupId": "AUTO_SHIPPING_LABEL",
            "fromDate": "2024-10-05T07:58:20-04:00",
            "sequenceNum": null,
            "lastUpdatedStamp": "2024-10-05T07:58:24-04:00",
            "facilityId": "BROADWAY",
            "thruDate": null
          },
          {
            "lastUpdatedStamp": "2024-10-15T11:08:42-04:00",
            "fromDate": "2024-10-15T11:08:42-04:00",
            "sequenceNum": null,
            "facilityId": "BROADWAY",
            "facilityGroupId": "FAC_GRP",
            "thruDate": null
          },
          {
            "fromDate": "2024-08-26T03:30:47-04:00",
            "facilityGroupId": "ONLINE_FAC_GRP",
            "sequenceNum": null,
            "facilityId": "BROADWAY",
            "lastUpdatedStamp": "2024-08-26T03:30:47-04:00",
            "thruDate": null
          },
          {
            "facilityGroupId": "OMS_FULFILLMENT",
            "sequenceNum": null,
            "fromDate": "2024-01-08T04:11:40-05:00",
            "lastUpdatedStamp": "2024-01-08T04:11:40-05:00",
            "facilityId": "BROADWAY",
            "thruDate": null
          },
          {
            "facilityGroupId": "PICKUP",
            "sequenceNum": null,
            "lastUpdatedStamp": "2024-11-13T08:50:58-05:00",
            "facilityId": "BROADWAY",
            "fromDate": "2024-11-13T08:50:58-05:00",
            "thruDate": null
          },
          {
            "fromDate": "2024-06-27T10:42:13-04:00",
            "sequenceNum": null,
            "facilityGroupId": "PICKUP",
            "lastUpdatedStamp": "2024-06-27T10:42:13-04:00",
            "facilityId": "BROADWAY",
            "thruDate": null
          },
          {
            "facilityGroupId": "STORES_FAC_GRP",
            "lastUpdatedStamp": "2025-01-16T14:51:05-05:00",
            "sequenceNum": 5,
            "facilityId": "BROADWAY",
            "fromDate": "2025-01-16T14:51:05-05:00",
            "thruDate": null
          },
          {
            "sequenceNum": null,
            "lastUpdatedStamp": "2024-07-25T05:20:32-04:00",
            "facilityGroupId": "US_INVENTORY",
            "fromDate": "2024-07-25T05:20:32-04:00",
            "facilityId": "BROADWAY",
            "thruDate": null
          },
          {
            "lastUpdatedStamp": "2024-03-20T06:13:09-04:00",
            "sequenceNum": null,
            "fromDate": "2024-03-20T06:13:09-04:00",
            "facilityId": "BROADWAY",
            "facilityGroupId": "_NA_",
            "thruDate": null
          }
        ]
      }
    ]
  }
]
```

</details>

## Attributes

**Header Level Attributes**

| Field                           | Description                                                                      |
|---------------------------------|----------------------------------------------------------------------------------|
| `returnId`                      | Identifier for the return.                                                       |
|`shopId`                         | The Shopify Shop Id of the return |
| `entryDate`                     | Entry date for the return in HotWax Commerce.                                                    |
| `returnDate`                    | Creation date of the return in the E-commerce system.                                                              |
| `returnChannelEnumId`           | Enum ID for the return channel.                                                   |
| `completedDatetime`             | Date and time when the return was completed in Howax.                                     |
| `productStoreId`                | Identifier for the product store.                                                |
| `productStoreExternalId`        | External ID for the product store.                                               |
| `customerPartyId`               | Identifier for the customer party.                                               |
| `isShippingChargesSent`         | Flag indicating if shipping charges were sent.                                   |
| `returnAdjustments`             | Array of adjustments related to the return.                                      |
| `customerPartyIdentifications`  | Array of identifications for the customer party.                                 |
| `tenderAmount`                  | Amount tendered for the return.                                                  |
| `payments`                      | Array of payments related to the return.                                         |
| `returnItems`                   | Array of items being returned.                                                   |

**Nested Fields Within Header Level Attributes:**

Nested Fields within `returnAdjustments`:
| Field                           | Description                                                                      |
|---------------------------------|----------------------------------------------------------------------------------|
| `customerReferenceId`           | Identifier for customer reference.                                               |
| `amount`                        | Amount of the adjustment.                                                        |
| `description`                   | Description of the adjustment.                                                   |
| ...                             | More fields for the return adjustments.                                          |

Nested Fields within `customerPartyIdentifications`:

| Field                           | Description                                                                      |
|---------------------------------|----------------------------------------------------------------------------------|
| `partyId`                       | Identifier for the party.                                                         |
| `idValue`                       | Value of the identification.                                                     |
| ...                             | More fields for the customer party identifications.                               |

Nested Fields within `payments`:

| Field                           | Description                                                                      |
|---------------------------------|----------------------------------------------------------------------------------|
| `paymentMethodTypeId`           | Type of payment method.                                                           |
| `paymentMethodDescription`      | Description of the payment method.                                                |
| `statusId`                      | Identifier for the status.                                                        |
| ...                             | More fields for the payments.                                                     |

Nested Attributes / Fields within `returnItems`:

| Field                           | Description                                                                      |
|---------------------------------|----------------------------------------------------------------------------------|
| `returnId`                      | Identifier for the return.                                                         |
| `returnItemSeqId`               | Sequence ID for the return item.                                                   |
| `orderId`                       | Identifier for the order.                                                          |
| ...                             | More fields for the return items.                                                          |
|`billTo`                         | Map of billing address details     |
|`productIdentification`          | List of maps for the product details of the return item  |
|`returnItemAdjustments`          | List of maps for the adjustments against the return item|

**Item Level Attributes:**

Nested Fields within `shipTo`:

| Field                           | Description                                                                      |
|---------------------------------|----------------------------------------------------------------------------------|
| `houseNumberExt`                | Extension for the house number.                                                  |
| `contactMechId`                 | Identifier for the contact mechanism.                                            |
| `postalCode`                    | Postal code of the address.                                                       |
| ...                             | More fields for the shipping address.                                             |

Nested Fields within `billTo`:

| Field                           | Description                                                                      |
|---------------------------------|----------------------------------------------------------------------------------|
| `houseNumberExt`                | Extension for the house number.                                                  |
| `address2`                      | Additional address information.                                                  |
| `postalCode`                    | Postal code of the address.                                                       |
| ...                             | More fields for the billing address.                                             |

Nested Fields within `productIdentifications`:

| Field                           | Description                                                                      |
|---------------------------------|----------------------------------------------------------------------------------|
| `productId`                     | Identifier for the product.                                                       |
| `goodIdentificationTypeId`     | Type of good identification.                                                      |
| `idValue`                       | Value of the identification.                                                     |
| ...                             | More fields for the product identifications.                                      |

Nested Fields within `returnItemAdjustments`:

| Field                           | Description                                                                      |
|---------------------------------|----------------------------------------------------------------------------------|
| `customerReferenceId`           | Identifier for customer reference.                                               |
| `amount`                        | Amount of the adjustment.                                                        |
| `description`                   | Description of the adjustment.                                                   |
| ...                             | More fields for the return item adjustments.                                      |

{% hint style="info" %}
**NOTE:** Fields like `orderId`, `orderName`, `billTo` and so on are stored at the item level instead of the header level as a single return can be composed of items from multiple orders of a customer. A classic example would be the case of POS returns.
{% endhint %}