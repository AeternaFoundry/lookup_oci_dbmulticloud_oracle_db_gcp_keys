variable "dbmulticloud_oracle_db_gcp_keys_lookup" {
  description = <<EOT
Map of dbmulticloud_oracle_db_gcp_keys_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - oracle_db_gcp_key_id
    - oracle_db_gcp_key_ring_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    display_name              = optional(string)
    oracle_db_gcp_key_id      = optional(string)
    oracle_db_gcp_key_ring_id = optional(string)
    state                     = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

