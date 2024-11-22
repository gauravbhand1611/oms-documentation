# Inventory Transfer Recommendation Creation

## Solution Overview

The system will:

- **Identify Facilities with Insufficient Stock**
- **Find Potential Source Facilities**
- **Evaluate Transfer Feasibility**
- **Recommend Transfers**

## Detailed Steps

### 1. Identify Facilities with Insufficient Stock

- **Criteria**: Select facilities where the current inventory minus the minimum required quantity is less than zero.
- **Purpose**: Finds facilities needing replenishment.

### 2. Find Potential Source Facilities

For each deficient facility:

- Search for other facilities with the same product where:
  - The facility is different from the deficient one.
  - The sales velocity is above a set threshold.
- **Purpose**: Identifies facilities with surplus stock and adequate sales activity.

### 3. Evaluate Transfer Feasibility

- **Calculation**: Check if the current inventory at the source facility minus the reorder quantity is greater than the minimum required quantity.
- **Purpose**: Ensures the source facility remains above its minimum inventory level after the transfer.

### 4. Recommend Transfers

- **Action**: If the feasibility condition is met, recommend transferring the reorder quantity from the source to the deficient facility.

## Examples

### Example 1: Transfer Recommended

**Facility A (Deficient)**

- Product ID: 121
- Current Inventory: 0 units
- Reorder Quantity: 50 units

**Facility B (Source)**

- Current Inventory: 100 units
- Minimum Quantity: 20 units
- Sales Velocity: Above threshold

**Calculation**:

- Source Inventory After Transfer: 100 units - 50 units = 50 units
- Check: 50 units > 20 units (Minimum Quantity)
- **Result**: True

**Recommendation**: Transfer 50 units from Facility B to Facility A.

### Example 2: Transfer Not Recommended

**Facility A (Deficient)**

- Product ID: 121
- Current Inventory: 0 units
- Reorder Quantity: 50 units

**Facility C (Potential Source)**

- Current Inventory: 40 units
- Minimum Quantity: 20 units
- Sales Velocity: Above threshold

**Calculation**:

- Source Inventory After Transfer: 40 units - 50 units = -10 units
- Check: -10 units > 20 units (Minimum Quantity)
- **Result**: False

**Recommendation**: Do not transfer units from Facility C.
