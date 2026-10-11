variable "vpc_endpoints" {
  description = <<EOT
Map of vpc_endpoints, attributes below
Required:
    - vpc_id
Optional:
    - auto_accept
    - ip_address_type
    - policy
    - private_dns_enabled
    - region
    - resource_configuration_arn
    - route_table_ids
    - security_group_ids
    - service_name
    - service_network_arn
    - service_region
    - subnet_ids
    - tags
    - tags_all
    - vpc_endpoint_type
    - dns_options (block):
        - dns_record_ip_type (optional)
        - private_dns_only_for_inbound_resolver_endpoint (optional)
        - private_dns_preference (optional)
        - private_dns_specified_domains (optional)
    - subnet_configuration (block):
        - ipv4 (optional)
        - ipv6 (optional)
        - subnet_id (optional)
EOT

  type = map(object({
    vpc_id                     = string
    auto_accept                = optional(bool)
    ip_address_type            = optional(string)
    policy                     = optional(string)
    private_dns_enabled        = optional(bool)
    region                     = optional(string)
    resource_configuration_arn = optional(string)
    route_table_ids            = optional(set(string))
    security_group_ids         = optional(set(string))
    service_name               = optional(string)
    service_network_arn        = optional(string)
    service_region             = optional(string)
    subnet_ids                 = optional(set(string))
    tags                       = optional(map(string))
    tags_all                   = optional(map(string))
    vpc_endpoint_type          = optional(string)
    dns_options = optional(object({
      dns_record_ip_type                             = optional(string)
      private_dns_only_for_inbound_resolver_endpoint = optional(bool)
      private_dns_preference                         = optional(string)
      private_dns_specified_domains                  = optional(set(string))
    }))
    subnet_configuration = optional(list(object({
      ipv4      = optional(string)
      ipv6      = optional(string)
      subnet_id = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.vpc_endpoints : (
        v.dns_options == null || (v.dns_options.private_dns_preference == null || (contains(["ALL_DOMAINS", "VERIFIED_DOMAINS_ONLY", "VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS", "SPECIFIED_DOMAINS_ONLY"], v.dns_options.private_dns_preference)))
      )
    ])
    error_message = "must be one of: ALL_DOMAINS, VERIFIED_DOMAINS_ONLY, VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS, SPECIFIED_DOMAINS_ONLY"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

