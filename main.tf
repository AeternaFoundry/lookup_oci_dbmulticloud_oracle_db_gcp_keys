data "oci_dbmulticloud_oracle_db_gcp_keys" "dbmulticloud_oracle_db_gcp_keys_lookup" {
  for_each = var.dbmulticloud_oracle_db_gcp_keys_lookup

  compartment_id            = each.value.compartment_id
  display_name              = each.value.display_name
  oracle_db_gcp_key_id      = each.value.oracle_db_gcp_key_id
  oracle_db_gcp_key_ring_id = each.value.oracle_db_gcp_key_ring_id
  state                     = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

