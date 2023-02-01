variable "resource_group_name" {
  description = "This variable defines the Resource Group"
}
variable "postgresql-admin-login" {
    description = "Login to authenticate to PostgreSQL Server"
}
variable "postgresql-admin-password" {
    description = "The Password associated with the administrator_login for the PostgreSQL Server. Required when create_mode is Default."
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
variable "location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}
variable "postgresql-database-name" {
  description = "Specifies the name of the PostgreSQL Database, which needs to be a valid PostgreSQL identifier. Changing this forces a new resource to be created."
}
variable "postgresql-server-name" {
  description = "Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created."
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