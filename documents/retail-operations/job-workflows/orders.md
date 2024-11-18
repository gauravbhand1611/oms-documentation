# Orders

## Import

### New orders
**Job Name:** `Import Orders`  
**Job Enum ID:** `JOB_IMP_ORD`  

**Description**
The `Import Orders` job is designed to import new orders recently created on eCommerce platforms into HotWax Commerce. New orders are identified by checking those created since the last time the job was executed. If the job is run for the first time, it defaults to orders created in the last 15 minutes from the execution time. This default duration can be adjusted using the "frequency" custom parameter.  

**Recommended Frequency**  
Importing new orders every 15 minutes is generally sufficient to ensure customers have a grace period for order cancellations and to process expedited orders on time. However:  

- **Low Order Volume:** For instances with lower order volume and more demanding fulfillment SLAs, consider increasing the frequency to every five minutes.  
- **High Order Volume:** During periods of higher order volume, importing orders every 15 minutes is recommended to leverage HotWax Commerce's bulk import capabilities fully.  

| **Parameter**    | **Type**    | **Description**                                                                                   | **Default Value** |
|-------------------|-------------|---------------------------------------------------------------------------------------------------|-------------------|
| `frequency`       | Required    | Defines the default duration for syncing orders if there is no Last Sync Time.                   | 15 minutes        |
| `limit`           | Optional    | Sets a limit on the order import job, restricting the number of orders fetched from eCommerce.    | Not specified     |
| `bufferTime`      | Optional    | Ensures orders are not imported until they have aged past a desired duration, accommodating post-processing workflows in eCommerce platforms. | 5 minutes         |
| `thruDateBuffer`  | Optional    | Skips Shopify orders created within the specified time interval. For example, if thruDateBuffer is set to 1, it implies that orders created in Shopify within the last 1 minute will be skipped during the import process. | 2 minutes         |
| `scheduleNow`     | Optional    | When importing files into the OMS, the system must pick the file out of sequence for immediate processing. Enabled by default when importing files from FTP, but can be disabled during high-volume syncs for system stability. | Enabled           |

### Approve Orders  
**Job Name:** `Approve Orders`  
**Job Enum ID:** `JOB_APR_ORD`  

**Description**  
In HotWax Commerce, all orders are initially marked as `Created` after downloading. Orders can be auto-approved using a scheduled job called `Approve Orders`, which checks the approval status of Shopify orders based on parameters set by Shopify merchants. The job runs at a default frequency and approves orders once all necessary details and required references are established.  

**Custom Parameters**  

| **Parameter**   | **Type**    | **Description**                                                   | **Default Value** |
|-----------------|-------------|-------------------------------------------------------------------|-------------------|
| `orderId`       | Optional    | The ID associated with the order is to be updated on the eCommerce platform. | Not specified     |

### Updates orders  
**Job Name:** `Import Order Updates from Shopify`  
**Job Enum ID:** `JOB_IMP_ORD_UPD`  

**Description**  
The `Import Order Updates from Shopify` job is specifically designed to handle the import of order updates from the eCommerce platform into HotWax Commerce. This job caters to a variety of order modifications, including the addition of new items, changes in item quantities, and the cancellation of items or entire orders.  

**Recommended Frequency**  
The job is configured to run every 60 minutes, ensuring frequent updates and maintaining synchronization between Shopify and HotWax Commerce.  

| **Parameter**   | **Type**    | **Description**                                                       | **Default Value** |
|-----------------|-------------|-----------------------------------------------------------------------|-------------------|
| `frequency`     | Required    | Defines the default duration for syncing orders if there is no Last Sync Time. | 60 minutes        |
| `bufferTime`    | Optional    | Ensures orders are not imported until they have aged past a desired duration, accommodating post-processing workflows in Shopify. | Not specified     |

### Cancelled Orders  
**Job Name:** `Import Canceled Order`  
**Job Enum ID:** `JOB_IMP_CAN_ORD`  

**Description**  
The `Import Cancelled Orders` job synchronizes order cancellations between the eCommerce platform and HotWax Commerce. It identifies orders marked as canceled in the eCommerce system and updates their status in HotWax Commerce, ensuring alignment and preventing further processing of canceled orders.  

| **Parameter**   | **Type**    | **Description**                                                       | **Default Value** |
|-----------------|-------------|-----------------------------------------------------------------------|-------------------|
| `frequency`     | Required    | Defines the default duration for syncing orders if there is no Last Sync Time. | 15 minutes        |
| `bufferTime`    | Optional    | Ensures orders are not imported until they have aged past a desired duration, accommodating post-processing workflows in eCommerce platforms. | Not Specified     |

### Cancelled Items  
**Job Name:** `Import Canceled Items`  
**Job Enum ID:** `JOB_IMP_ITM_CNCL`  

**Description**  
The `Import Canceled Items` job is designed to actively monitor eCommerce platforms for order items that have been canceled. Unlike canceling the entire order, this job specifically targets canceled items and ensures their corresponding status is updated within HotWax Commerce.  
This job is crucial for maintaining accurate inventory records and order status in HotWax Commerce. By identifying and canceling individual items that have been canceled on the eCommerce platform, it prevents discrepancies and ensures that the system reflects the most up-to-date order information. 

**Recommended Frequency**  
The job is configured to run every 15 minutes, ensuring a regular check for canceled items and prompt updates within HotWax Commerce.  

| **Parameter**   | **Type**    | **Description**                                                       | **Default Value** |
|-----------------|-------------|-----------------------------------------------------------------------|-------------------|
| `frequency`     | Required    | Defines the default duration for syncing orders if there is no Last Sync Time. | 15 minutes        |
| `bufferTime`    | Optional    | Ensures orders are not imported until they have aged past a desired duration, accommodating post-processing workflows in Shopify. | Not specified     |

### Returns  
**Job Name:** `Import Order Returns`  
**Job Enum ID:** `JOB_IMP_RTN`  

**Description**  
The `Import Order Returns` job plays a crucial role in managing returned orders seamlessly between eCommerce platforms and HotWax Commerce. This job actively monitors eCommerce platforms to identify orders that have been returned. Subsequently, it initiates the creation of return transactions within HotWax Commerce. In cases where inventory is damaged, the job ensures accurate logging of Damaged variances in HotWax.  
- **Return Creation:** The primary function of the job is to create return transactions in HotWax Commerce for orders identified as returned on the eCommerce platform.  
- **Restocking:** If the inventory is damaged and marked as returnable, the job ensures that returned items are restocked appropriately.  

**Recommended Frequency**  
The job is configured to run every 15 minutes, ensuring a regular check for returned orders and facilitating swift updates within HotWax Commerce.  

| **Parameter**   | **Type**    | **Description**                                                       | **Default Value** |
|-----------------|-------------|-----------------------------------------------------------------------|-------------------|
| `frequency`     | Required    | Defines the default duration for syncing orders if there is no Last Sync Time. | 15 minutes        |
| `bufferTime`    | Optional    | Ensures orders are not imported until they have aged past a desired duration, accommodating post-processing workflows in Shopify. | Not specified     |
| `financialStatus`| Optional   | Specifies the financial status of orders.                             | Not specified     |
| `limit`         | Optional    | Sets a limit on the order import job, restricting the number of orders fetched from eCommerce. | Not specified     |
