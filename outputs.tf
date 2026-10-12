output "cortex_agents_id" {
  description = "Map of id values across all cortex_agents, keyed the same as var.cortex_agents except keys with no id are omitted"
  value       = { for k, v in snowflake_cortex_agent.cortex_agents : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cortex_agents_comment" {
  description = "Map of comment values across all cortex_agents, keyed the same as var.cortex_agents except keys with no comment are omitted"
  value       = { for k, v in snowflake_cortex_agent.cortex_agents : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "cortex_agents_database" {
  description = "Map of database values across all cortex_agents, keyed the same as var.cortex_agents except keys with no database are omitted"
  value       = { for k, v in snowflake_cortex_agent.cortex_agents : k => v.database if v.database != null && length(v.database) > 0 }
}
output "cortex_agents_describe_output" {
  description = "Map of describe_output values across all cortex_agents, keyed the same as var.cortex_agents except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_cortex_agent.cortex_agents : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "cortex_agents_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all cortex_agents, keyed the same as var.cortex_agents except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_cortex_agent.cortex_agents : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "cortex_agents_name" {
  description = "Map of name values across all cortex_agents, keyed the same as var.cortex_agents except keys with no name are omitted"
  value       = { for k, v in snowflake_cortex_agent.cortex_agents : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cortex_agents_profile" {
  description = "Map of profile values across all cortex_agents, keyed the same as var.cortex_agents except keys with no profile are omitted"
  value       = { for k, v in snowflake_cortex_agent.cortex_agents : k => one(v.profile) if v.profile != null && length(v.profile) > 0 }
}
output "cortex_agents_schema" {
  description = "Map of schema values across all cortex_agents, keyed the same as var.cortex_agents except keys with no schema are omitted"
  value       = { for k, v in snowflake_cortex_agent.cortex_agents : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "cortex_agents_show_output" {
  description = "Map of show_output values across all cortex_agents, keyed the same as var.cortex_agents except keys with no show_output are omitted"
  value       = { for k, v in snowflake_cortex_agent.cortex_agents : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}
output "cortex_agents_specification" {
  description = "Map of specification values across all cortex_agents, keyed the same as var.cortex_agents except keys with no specification are omitted"
  value       = { for k, v in snowflake_cortex_agent.cortex_agents : k => v.specification if v.specification != null && length(v.specification) > 0 }
}

