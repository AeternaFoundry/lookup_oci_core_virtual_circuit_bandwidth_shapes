data "oci_core_virtual_circuit_bandwidth_shapes" "core_virtual_circuit_bandwidth_shapes_lookup" {
  for_each = var.core_virtual_circuit_bandwidth_shapes_lookup

  provider_service_id = each.value.provider_service_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

