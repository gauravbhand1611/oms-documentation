# Table of contents

## Best Practices and Guidelines

 * [ChatGPT Prompts](guidelines/chatgpt-prompts.md)
 * [Documentation Guideline](guidelines/documentation-guideline.md)
 * [GitBook Spaces](guidelines/gitbook-spaces.md)
 * [GitHub Guideline](guidelines/github-guideline.md)
 * [Internal Usage](README.md)

## Tools

* [End to End Order Flow](tools/order-flow/README.md)
  * [Order Creation](tools/order-flow/order-creation.md)
  * [Order Import](tools/order-flow/orders-import.md)
  * [Order Brokering](tools/order-flow/order-brokering.md)
  * [Order Fulfillment](tools/order-flow/order-fulfillment.md)
  * [Order Fulfillment Notification](tools/order-flow/order-fulfillment-notification.md)

* [Jira](tools/jira)
  * [Feature request on jira](tools/jira)

* [Launchpad](tools/jira)
  * [Fulfillment](fulfillment/stuck-orders.md)
     * [Stuck orders in fulfillment app](fulfillment/stuck-orders.md)
  * [Job Manager](job-manager/check-job-frequency.md)
     * [Check Job Frequencies](job-manager/check-job-frequency.md)
     * [Job Runtime Error](job-manager/runtime-error.md)
     * [Mismatch Time Zone](job-manager/timezone-mismatch.md)

* [Napita](<README (1).md>)
  * [Glossary](tools/napita/glossary.md)
  * [Schedule Processors](tools/napita/schedule-processors.md)
  * [View and Manage Processors](tools/napita/view-and-manage-processors.md)
  * [Flow Definitions](tools/napita/flow-definitions.md)
  * [Verify Processor Properties](tools/napita/verify-processor-properties.md)
  * [Bulletins](tools/napita/bulletins.md)
  * [Data Provenance](tools/napita/data-provenance.md)
  * [Troubleshooting](tools/napita/troubleshooting/README.md)
    * [Data Export Errors](tools/napita/troubleshooting/data-export-errors.md)
    * [Queue Errors](tools/napita/troubleshooting/troubleshooting-queue-files.md)
    * [FetchPut SFTP Retry](tools/napita/troubleshooting/fetch-put-sftp-retry.md)

* [Ofbiz](order/multicurrency-sales-orders.md)
  * [Orders](order/multicurrency-sales-orders.md)
    * [Multicurrency Sales Orders](order/multicurrency-sales-orders.md)
    * [POS Order Refresh Failure](order/pos-order-refresh-failure.md)
    * [Pre-Order Catalog Sync](order/pre-order-sync.md)
  * [Products](products/duplicate-products.md)
    * [Product Duplication](products/duplicate-products.md)
  * [Inventory](inventory/add-new-variance-reason.md)
     * [Add new variance reason](inventory/add-new-variance-reason.md)
  * [Data Manager Configuration](data-manager/job-creation-by-data-configuration.md)
    * [Create a Job using Data Manager Configuration](data-manager/job-creation-by-data-configuration.md)
    * [SFTP Issue](data-manager/sftp-issue.md)

* [Shopify](tools/shopify/access-shopify-pos-app.md)
  * [How to access Shopify POS APP](tools/shopify/access-shopify-pos-app.md)

* [Tathya](tools/tathya/README.md)
  * [Database Configuration](tools/tathya/databaseConfiguration/README.md)
    * [Additional Settings](tools/tathya/databaseConfiguration/additionalConfigurations.md)
  * [Charts Creation](tools/tathya/charts-creation/README.md)
    * [Selecting Database & Schema](tools/tathya/charts-creation/selectingDatabase\&ExecutingQueries.md)
    * [View & Save Chart](tools/tathya/charts-creation/visualize\&SaveChart.md)
    * [Charts Access](tools/tathya/charts-creation/chartsaccess.md)
    * [Create Multiple Charts](tools/tathya/charts-creation/creatingMultipleCharts.md)
    * [LogInsight Charts](tools/tathya/charts-creation/log-insight-charts.md)
  * [Understanding Dashboards](tools/tathya/understanding-dashboards/README.md)
    * [Configuring Dashboards](tools/tathya/understanding-dashboards/configuringDashboards.md)
    * [Dashboards Access](tools/tathya/understanding-dashboards/dashboardsaccess.md)
    * [Dashboard Options](tools/tathya/understanding-dashboards/dashboardOptions.md)
    * [Dashboard Customizations](tools/tathya/understanding-dashboards/dashboardCustomization.md)
    * [Link Configuration](tools/tathya/understanding-dashboards/link-configuration.md)
    * [Set Multi-Day Filters](tools/tathya/understanding-dashboards/multi-day-filters.md)
  * [Configuring Alerts & Reports](tools/tathya/alerts\&Reports/README.md)
     * [Creating Alerts](tools/tathya/alerts\&Reports/creatingAlerts.md)
     * [Creating Reports](tools/tathya/alerts\&Reports/creatingReports.md)
     * [Alternate Interfaces to Schedule Reports](tools/tathya/alerts\&Reports/alternateInterfaceReportScheduling.md)
  * [Creating Roles](tools/tathya/creatingRoles/README.md)
     * [List & Modify Roles](tools/tathya/creatingRoles/list\&ModifyRoles.md)
  * [Creating User](tools/tathya/userCreation/README.md)
    * [Creating LDAP Account](tools/tathya/userCreation/setupLDAPaccount.md)
    * [Tathya Authentication](tools/tathya/userCreation/tathyaAuthentication.md)
    * [Listing User in Tathya](tools/tathya/userCreation/listUsersTathya.md)
    * [User Permissions](tools/tathya/usercreation/user-permissions.md)
  * [Troubleshoting](tools/tathya/sop/data-discrepancies.md)
    * [Reporting Discrepancies](tools/tathya/sop/data-discrepancies.md)
    * [Tathya login Issue](tools/tathya/sop/tathya-login-issue.md)
  * [How to](tools/tathya/how-to/create-user-tathya.md)
    * [How to create user on tathya](tools/tathya/how-to/create-user-tathya.md)
    * [How to request for the report](tools/tathya/how-to/report-request.md)

## Client Communication

* [Templated Replies](client-communication/template-replies.md)
* [Ticket and Release Mangemnet](client-communication/ticket-management.md)

## Monitoring

* [Sanity Checklist](monitoring/sanity-checklist.md)
* [System Monitoring Guide](monitoring/system-monitoring-guide.md)

## Hotwax Deployment & Versions

* [HotWax Commerce Deployment](deployment/deployment.md)
* [Update OMS Version](deployment/updateOmsVersion.md)
* [Rollback OMS Version](deployment/rollback-release.md)
* [Optional Plugins](deployment/optional-plugins.md)
