output "core_virtual_circuit_bandwidth_shapes_lookup_id" {
  description = "Map of id values across all core_virtual_circuit_bandwidth_shapes_lookup, keyed the same as var.core_virtual_circuit_bandwidth_shapes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_virtual_circuit_bandwidth_shapes.core_virtual_circuit_bandwidth_shapes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_virtual_circuit_bandwidth_shapes_lookup_filter" {
  description = "Map of filter values across all core_virtual_circuit_bandwidth_shapes_lookup, keyed the same as var.core_virtual_circuit_bandwidth_shapes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_virtual_circuit_bandwidth_shapes.core_virtual_circuit_bandwidth_shapes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_virtual_circuit_bandwidth_shapes_lookup_provider_service_id" {
  description = "Map of provider_service_id values across all core_virtual_circuit_bandwidth_shapes_lookup, keyed the same as var.core_virtual_circuit_bandwidth_shapes_lookup except keys with no provider_service_id are omitted"
  value       = { for k, v in data.oci_core_virtual_circuit_bandwidth_shapes.core_virtual_circuit_bandwidth_shapes_lookup : k => v.provider_service_id if v.provider_service_id != null && length(v.provider_service_id) > 0 }
}
output "core_virtual_circuit_bandwidth_shapes_lookup_virtual_circuit_bandwidth_shapes" {
  description = "Map of virtual_circuit_bandwidth_shapes values across all core_virtual_circuit_bandwidth_shapes_lookup, keyed the same as var.core_virtual_circuit_bandwidth_shapes_lookup except keys with no virtual_circuit_bandwidth_shapes are omitted"
  value       = { for k, v in data.oci_core_virtual_circuit_bandwidth_shapes.core_virtual_circuit_bandwidth_shapes_lookup : k => v.virtual_circuit_bandwidth_shapes if v.virtual_circuit_bandwidth_shapes != null && length(v.virtual_circuit_bandwidth_shapes) > 0 }
}

