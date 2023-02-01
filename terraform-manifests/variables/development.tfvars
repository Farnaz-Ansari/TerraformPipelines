environment          = "development"
resource_group_name  = "project-app-rg-DEV"

postgresql-server-name                                              = "app-srv-dev"
postgresql-database-name                                            = "app-db-dev"
postgresql-admin-login                                              = "admin"
postgresql-storage                                                  = "102400"
postgresql-sku-name                                                 = "GP_Gen5_2"
postgresql-version                                                  = "11"
postgresql-auto_grow_enabled                                        = true
postgresql-backup_retention_days                                    = 7
postgresql-geo_redundant_backup_enabled                             = false
postgresql-public_network_access_enabled                            = true
postgresql-ssl_enforcement_enabled                                  = true
postgresql-ssl_minimal_tls_version_enforced                         = "TLS1_2"
postgresql-database-charset                                         = "UTF8"
postgresql-database-collation                                       = "English_United States.1252"
postgresql-threat_detection_policy-disabled_alerts                  = []
postgresql-threat_detection_policy-email_account_admins             = false 
postgresql-threat_detection_policy-email_addresses                  = [] 
postgresql-threat_detection_policy-enabled                          = true 
postgresql-threat_detection_policy-retention_days                   = 0
postgresql-tags                                                     = { "Type" = "Non-Production" }

cosmosdb_table_account_name                               = "app-cosmos-db-dev"
cosmosdb_table_enable_free_tier                           = true
cosmosdb_table_offer_type                                 = "Standard"
cosmosdb_table_kind                                       = "GlobalDocumentDB"
cosmosdb_table_enable_automatic_failover                  = false
cosmosdb_table_enable_multiple_write_locations            = false
cosmosdb_table_is_virtual_network_filter_enabled          = false
cosmosdb_table_ip_range_filter                            = null
cosmosdb_table_key_vault_key_id                           = null
cosmosdb_table_tags                                       = { "Type" = "Non-Production" }
cosmosdb_table_capabilities                               = "EnableTable"
cosmosdb_table_consistency_policy_consistency_level       = "BoundedStaleness"
cosmosdb_table_consistency_policy_max_interval_in_seconds = 86400
cosmosdb_table_consistency_policy_max_staleness_prefix    = 1000000
cosmosdb_table_geo_location_failover_priority             = 0
cosmosdb_table_table_names                                = ["AppDomainEvents"]
cosmosdb_table_throughput                                 = 400
cosmosdb_table_max_throughput                             = null