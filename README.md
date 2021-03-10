# tfc-sample-injest-stack

Composed of:

1. Azure resource group

2. Azure storage account (TODO)

3. Azure storage container (TODO)

## Terraform Backend Configuration

Since it is common to use the Terraform CLI alongside Terraform Cloud, Hashicorp recommends including a backend block in the configuration code. Backend configuration is only used by the CLI.

See [Where Backends Are Used](https://www.terraform.io/docs/language/settings/backends/index.html#where-backends-are-used).

## Terraform Cloud Worspace Configuration

To authenticate to Azure, Terraform Cloud uses a Service Principal, which you must create separately. See [Creating a Service Principal using the Azure CLI](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret#creating-a-service-principal-using-the-azure-cli).

Specify the following environment variables for the workspace in the Terraform Cloud UI using the output from creating the service principal:

| Variable Name | Description | Sensitive |
| --- | --- | --- |
| ARM_CLIENT_ID | Service principal's appId | NO |
| ARM_CLIENT_SECRET | Service principal's password | **YES** |
| ARM_SUBSCRIPTION_ID | Service principal's subscription id | NO |
| ARM_TENANT_ID | Service principal's tenant id | NO |
