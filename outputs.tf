output "vpc_endpoints_id" {
  description = "Map of id values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpc_endpoints_arn" {
  description = "Map of arn values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "vpc_endpoints_auto_accept" {
  description = "Map of auto_accept values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.auto_accept if v.auto_accept != null }
}
output "vpc_endpoints_cidr_blocks" {
  description = "Map of cidr_blocks values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.cidr_blocks if v.cidr_blocks != null && length(v.cidr_blocks) > 0 }
}
output "vpc_endpoints_dns_entry" {
  description = "Map of dns_entry values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.dns_entry if v.dns_entry != null && length(v.dns_entry) > 0 }
}
output "vpc_endpoints_dns_options" {
  description = "Map of dns_options values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => one(v.dns_options) if v.dns_options != null && length(v.dns_options) > 0 }
}
output "vpc_endpoints_ip_address_type" {
  description = "Map of ip_address_type values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.ip_address_type if v.ip_address_type != null && length(v.ip_address_type) > 0 }
}
output "vpc_endpoints_network_interface_ids" {
  description = "Map of network_interface_ids values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.network_interface_ids if v.network_interface_ids != null && length(v.network_interface_ids) > 0 }
}
output "vpc_endpoints_owner_id" {
  description = "Map of owner_id values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "vpc_endpoints_policy" {
  description = "Map of policy values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "vpc_endpoints_prefix_list_id" {
  description = "Map of prefix_list_id values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.prefix_list_id if v.prefix_list_id != null && length(v.prefix_list_id) > 0 }
}
output "vpc_endpoints_private_dns_enabled" {
  description = "Map of private_dns_enabled values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.private_dns_enabled if v.private_dns_enabled != null }
}
output "vpc_endpoints_region" {
  description = "Map of region values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpc_endpoints_requester_managed" {
  description = "Map of requester_managed values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.requester_managed if v.requester_managed != null }
}
output "vpc_endpoints_resource_configuration_arn" {
  description = "Map of resource_configuration_arn values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.resource_configuration_arn if v.resource_configuration_arn != null && length(v.resource_configuration_arn) > 0 }
}
output "vpc_endpoints_route_table_ids" {
  description = "Map of route_table_ids values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.route_table_ids if v.route_table_ids != null && length(v.route_table_ids) > 0 }
}
output "vpc_endpoints_security_group_ids" {
  description = "Map of security_group_ids values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.security_group_ids if v.security_group_ids != null && length(v.security_group_ids) > 0 }
}
output "vpc_endpoints_service_name" {
  description = "Map of service_name values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}
output "vpc_endpoints_service_network_arn" {
  description = "Map of service_network_arn values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.service_network_arn if v.service_network_arn != null && length(v.service_network_arn) > 0 }
}
output "vpc_endpoints_service_region" {
  description = "Map of service_region values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.service_region if v.service_region != null && length(v.service_region) > 0 }
}
output "vpc_endpoints_state" {
  description = "Map of state values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.state if v.state != null && length(v.state) > 0 }
}
output "vpc_endpoints_subnet_configuration" {
  description = "Map of subnet_configuration values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.subnet_configuration if v.subnet_configuration != null && length(v.subnet_configuration) > 0 }
}
output "vpc_endpoints_subnet_ids" {
  description = "Map of subnet_ids values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.subnet_ids if v.subnet_ids != null && length(v.subnet_ids) > 0 }
}
output "vpc_endpoints_tags" {
  description = "Map of tags values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "vpc_endpoints_tags_all" {
  description = "Map of tags_all values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "vpc_endpoints_vpc_endpoint_type" {
  description = "Map of vpc_endpoint_type values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.vpc_endpoint_type if v.vpc_endpoint_type != null && length(v.vpc_endpoint_type) > 0 }
}
output "vpc_endpoints_vpc_id" {
  description = "Map of vpc_id values across all vpc_endpoints, keyed the same as var.vpc_endpoints"
  value       = { for k, v in aws_vpc_endpoint.vpc_endpoints : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}

