variable "core_virtual_circuit_bandwidth_shapes_lookup" {
  description = <<EOT
Map of core_virtual_circuit_bandwidth_shapes_lookup, attributes below
Required:
    - provider_service_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    provider_service_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

