//generic variables
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

variable "location" {
  type        = string
  description = "Azure Region where all these resources will be provisioned"
  default     = "westeurope"
}
variable "resource_group_name" {
  type        = string
  description = "This variable defines the Resource Group"
}
variable "environment" {
  type        = string
  description = "This variable defines the Environment"
}
variable "appName" {
  description = "App Name of the Web App"
  default     = "appName"
}

//postgresql variables
variable "postgresql-admin-login" {
    description = "Login to authenticate to PostgreSQL Server"
}
variable "postgresql-admin-password" {
    description = "The Password associated with the administrator_login for the PostgreSQL Server. Required when create_mode is Default."
}
variable "postgresql-database-name" {
  description = "Specifies the name of the PostgreSQL Database, which needs to be a valid PostgreSQL identifier. Changing this forces a new resource to be created."
}
variable "postgresql-server-name" {
  description = "Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created."
}
variable "postgresql-version" {
    description = "Specifies the version of PostgreSQL to use. Valid values are 9.5, 9.6, 10, 10.0, and 11. Changing this forces a new resource to be created."
}
variable "postgresql-sku-name" {
    description = "Specifies the SKU Name for this PostgreSQL Server. The name of the SKU, follows the tier + family + cores pattern (e.g. B_Gen4_1, GP_Gen5_8). "
}
variable "postgresql-storage" {
    description = "Max storage allowed for a server. Possible values are between 5120 MB(5GB) and 1048576 MB(1TB) for the Basic SKU and between 5120 MB(5GB) and 16777216 MB(16TB) for General Purpose/Memory Optimized SKUs."
}
variable "postgresql-auto_grow_enabled" {
    description = "Enable/Disable auto-growing of the storage. Storage auto-grow prevents your server from running out of storage and becoming read-only. If storage auto grow is enabled, the storage automatically grows without impacting the workload. The default value if not explicitly specified is true."
}
variable "postgresql-backup_retention_days" {
    description = "Backup retention days for the server, supported values are between 7 and 35 days."
}
variable "postgresql-geo_redundant_backup_enabled" {
    description = "Turn Geo-redundant server backups on/off. This allows you to choose between locally redundant or geo-redundant backup storage in the General Purpose and Memory Optimized tiers."
}
variable "postgresql-public_network_access_enabled" {
    description = "Whether or not public network access is allowed for this server. Defaults to true."
}
variable "postgresql-ssl_enforcement_enabled" {
    description = "Specifies if SSL should be enforced on connections. Possible values are true and false."
}
variable "postgresql-ssl_minimal_tls_version_enforced" {
    description = "The minimum TLS version to support on the sever. Possible values are TLSEnforcementDisabled, TLS1_0, TLS1_1, and TLS1_2. Defaults to TLSEnforcementDisabled."
}
variable "postgresql-database-charset" {
    description = "Specifies the Charset for the PostgreSQL Database, which needs to be a valid PostgreSQL Charset. Changing this forces a new resource to be created."
}
variable "postgresql-database-collation" {
    description = "Specifies the Collation for the PostgreSQL Database, which needs to be a valid PostgreSQL Collation. Note that Microsoft uses different notation - en-US instead of en_US. Changing this forces a new resource to be created."
}
variable "postgresql-threat_detection_policy-disabled_alerts" {
  description = "Specifies a list of alerts which should be disabled. Possible values include Access_Anomaly, Sql_Injection and Sql_Injection_Vulnerability."
}
variable "postgresql-threat_detection_policy-email_account_admins" {
  description = "Should the account administrators be emailed when this alert is triggered?"
}
variable "postgresql-threat_detection_policy-email_addresses" {
  description = "A list of email addresses which alerts should be sent to."
}
variable "postgresql-threat_detection_policy-enabled" {
  description = "Is the policy enabled?"
}
variable "postgresql-threat_detection_policy-retention_days" {
  description = "Specifies the number of days to keep in the Threat Detection audit logs."
}
variable "postgresql-tags" {
  description = "Tags"
}

//cosmosdb_table variables
variable "cosmosdb_table_account_name" {
  description = "CosmosDB Table Account Name"
}
variable "cosmosdb_table_offer_type" {
  description = "Specifies the Offer Type to use for this CosmosDB Account - currently this can only be set to Standard."
}
variable "cosmosdb_table_kind" {
  description = "Specifies the Kind of CosmosDB to create - possible values are GlobalDocumentDB and MongoDB. Defaults to GlobalDocumentDB. Changing this forces a new resource to be created."
}
variable "cosmosdb_table_enable_free_tier" {
  description = "Enable Free Tier."
}
variable "cosmosdb_table_enable_automatic_failover" {
  description = "Enable automatic fail over for this Cosmos DB account."
}
variable "cosmosdb_table_enable_multiple_write_locations" {
  description = "Enable multiple write locations for this Cosmos DB account."
}
variable "cosmosdb_table_is_virtual_network_filter_enabled" {
  description = "Enable Virtual Network Filter for this Cosmos DB account."
}
variable "cosmosdb_table_ip_range_filter" {
  description = "This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IP's for a given database account. IP addresses/ranges must be comma separated and must not contain any spaces."
}
variable "cosmosdb_table_key_vault_key_id" {
  description = "A versionless Key Vault Key ID for CMK encryption. Changing this forces a new resource to be created."
}
variable "cosmosdb_table_tags" {
  type        = map(string)
  description = "Tags to apply to the Cosmos DB Account."
}
variable "cosmosdb_table_capabilities" {
  description = "The capabilities which should be enabled for this Cosmos DB account. Possible values are AllowSelfServeUpgradeToMongo36, DisableRateLimitingResponses, EnableAggregationPipeline, EnableCassandra, EnableGremlin, EnableMongo, EnableTable, EnableServerless, MongoDBv3.4 and mongoEnableDocLevelTTL."
}
variable "cosmosdb_table_consistency_policy_consistency_level" {
  description = "The Consistency Level to use for this CosmosDB Account - can be either BoundedStaleness, Eventual, Session, Strong or ConsistentPrefix."
}
variable "cosmosdb_table_consistency_policy_max_interval_in_seconds" {
  description = "When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. Accepted range for this value is 5 - 86400 (1 day). Defaults to 5. Required when consistency_level is set to BoundedStaleness."
}
variable "cosmosdb_table_consistency_policy_max_staleness_prefix" {
  description = "When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. Accepted range for this value is 10 – 2147483647. Defaults to 100. Required when consistency_level is set to BoundedStaleness."
}
variable "cosmosdb_table_geo_location_failover_priority" {
  description = "The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority 0."
}
variable "cosmosdb_table_table_names" {
  type        = list(string)
  description = "Name of the Tables"
}
variable "cosmosdb_table_throughput" {
  description = "Throughput of Table (RU/s)."
}
variable "cosmosdb_table_max_throughput" {
  description = "The maximum throughput of the Table (RU/s). Must be between 1,000 and 1,000,000. Must be set in increments of 1,000. Conflicts with throughput."
}