<!-- BEGIN_TF_DOCS -->

# Terraform Azure Module Template

This directory contains an example usage of the **terraform-azure-communication-service**. It demonstrates how to use the module with default settings or with custom configurations.

---

## 📋 Requirements

| Name      | Version   |
|-----------|-----------|
| Terraform | >= 1.6.6  |
| Azurerm   | >= 3.116.0|

---

## 🔌 Providers

| Name    | Version |
|---------|---------|
| azurerm | >= 3.116.0 |

---

## 📦 Modules

| Name            | Source                                    | Version |
|-----------------|-------------------------------------------|---------|
| resource_group  | terraform-az-modules/resource-group/azure | 1.0.0   |
| azcommunication | ./../../                                  | n/a     |

---

## 🏗️ Resources

No resources are directly created in this example — resources are managed inside the modules.

---

## 🔧 Inputs

This example uses the following input variables from the modules:

### From `azcommunication` module:

| Name                  | Description                         | Type     | Default | Required |
|-----------------------|-------------------------------------|----------|---------|----------|
| `name`                | Base name for resources             | `string` | n/a     | ✅ Yes   |
| `environment`         | Environment name (e.g., dev, prod)  | `string` | n/a     | ✅ Yes   |
| `resource_group_name` | Name of the resource group          | `string` | n/a     | ✅ Yes   |
| `location`            | Azure region or data location       | `string` | n/a     | ✅ Yes   |
| `enable_domain`       | Enable email domain configuration   | `bool`   | `false` | ❌ No    |

---

## 📤 Outputs

| Name                         | Description                                                         | Sensitive |
|------------------------------|---------------------------------------------------------------------|-----------|
| `communication_service_id`   | The ID of the Azure Communication Service resource.                 | ❌        |
| `primary_connection_string`  | The primary connection string for the Azure Communication Service. | ✅        |
| `secondary_connection_string`| The secondary connection string for the Azure Communication Service.| ✅        |
| `primary_key`                | The primary access key for the Azure Communication Service.         | ✅        |
| `secondary_key`              | The secondary access key for the Azure Communication Service.       | ✅        |

<!-- END_TF_DOCS -->
