resource "azurerm_cosmosdb_account" "account_table" {
  name                            = var.cosmosdb_table_account_name
  location                        = var.location
  resource_group_name             = var.cosmosdb_table_resource_group_name
  offer_type                      = var.cosmosdb_table_offer_type
  kind                            = var.cosmosdb_table_kind
  enable_free_tier                = var.cosmosdb_table_enable_free_tier
  enable_automatic_failover       = var.cosmosdb_table_enable_automatic_failover
  enable_multiple_write_locations = var.cosmosdb_table_enable_multiple_write_locations
  tags                            = var.cosmosdb_table_tags

  capabilities {
    name = var.cosmosdb_table_capabilities
  }

  consistency_policy {
    consistency_level       = var.cosmosdb_table_consistency_policy_consistency_level
    max_interval_in_seconds = var.cosmosdb_table_consistency_policy_max_interval_in_seconds
    max_staleness_prefix    = var.cosmosdb_table_consistency_policy_max_staleness_prefix
  }

  geo_location {
    location          = var.location
    failover_priority = var.cosmosdb_table_geo_location_failover_priority
  }

  lifecycle {
    ignore_changes = [default_identity_type]
  }
}

resource "azurerm_cosmosdb_table" "table" {
  for_each = toset(var.cosmosdb_table_table_names)

  name                = each.key
  resource_group_name = var.cosmosdb_table_resource_group_name
  account_name        = var.cosmosdb_table_account_name
  throughput          = var.cosmosdb_table_throughput

  dynamic "autoscale_settings" {
      for_each = var.cosmosdb_table_max_throughput == null ? [] : [1]
      content {
          max_throughput = var.cosmosdb_table_max_throughput
      }
  }

  depends_on = [
    azurerm_cosmosdb_account.account_table,
  ]
}
