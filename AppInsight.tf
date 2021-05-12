data  "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_application_insights" "appins" {
  name                                   = var.application_insights_name
  location                               = var.application_Insights_location
  resource_group_name                    = data.azurerm_resource_group.rg.name
  application_type                       = var.application_type
  daily_data_cap_in_gb                   = var.daily_data_cap_in_gb
  daily_data_cap_notifications_disabled  = var.daily_data_cap_notifications_disabled
  retention_in_days                      = var.retention_in_days
  sampling_percentage                    = var.sampling_percentage
  disable_ip_masking                     = var.disable_ip_masking
}



# tags = merge({
#   Module-Name = "Application Insights"
#   },
#   var.tags
# )