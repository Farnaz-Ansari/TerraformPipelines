resource "azurerm_postgresql_server" "postgresql-server" {
  name                              = var.postgresql-server-name
  location                          = var.location
  resource_group_name               = var.resource_group_name
  administrator_login               = var.postgresql-admin-login
  administrator_login_password      = var.postgresql-admin-password
  sku_name                          = var.postgresql-sku-name
  version                           = var.postgresql-version
  storage_mb                        = var.postgresql-storage
  auto_grow_enabled                 = var.postgresql-auto_grow_enabled
  backup_retention_days             = var.postgresql-backup_retention_days
  geo_redundant_backup_enabled      = var.postgresql-geo_redundant_backup_enabled
  public_network_access_enabled     = var.postgresql-public_network_access_enabled
  ssl_enforcement_enabled           = var.postgresql-ssl_enforcement_enabled    
  ssl_minimal_tls_version_enforced  = var.postgresql-ssl_minimal_tls_version_enforced
  tags                              = var.postgresql-tags

  threat_detection_policy {
    disabled_alerts       = var.postgresql-threat_detection_policy-disabled_alerts
    email_account_admins  = var.postgresql-threat_detection_policy-email_account_admins 
    email_addresses       = var.postgresql-threat_detection_policy-email_addresses
    enabled               = var.postgresql-threat_detection_policy-enabled
    retention_days        = var.postgresql-threat_detection_policy-retention_days      
  }

  lifecycle {
    ignore_changes = [administrator_login_password]
  }
}
resource "azurerm_postgresql_database" "postgresql-db" {
  name                = var.postgresql-database-name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.postgresql-server.name
  charset             = var.postgresql-database-charset
  collation           = var.postgresql-database-collation

  depends_on = [
    azurerm_postgresql_server.postgresql-server,
  ]
}