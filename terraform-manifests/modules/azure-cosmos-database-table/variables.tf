variable "cosmosdb_table_resource_group_name" {
  description = "Name of the Azure Resource Group to create"
}
variable "cosmosdb_table_account_name" {
  description = "Name of the Cosmos DB Account"
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
  description = "Name of the Tables."
}

variable "cosmosdb_table_throughput" {
  description = "Throughput of Table (RU/s)."
}

variable "cosmosdb_table_max_throughput" {
  description = "The maximum throughput of the Table (RU/s). Must be between 1,000 and 1,000,000. Must be set in increments of 1,000. Conflicts with throughput."
}

variable "location" {
  description = "Cosmos DB Resource Azure Region."
}
