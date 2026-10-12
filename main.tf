resource "snowflake_cortex_agent" "cortex_agents" {
  for_each = var.cortex_agents

  database      = each.value.database
  name          = each.value.name
  schema        = each.value.schema
  specification = each.value.specification
  comment       = each.value.comment

  dynamic "profile" {
    for_each = each.value.profile != null ? [each.value.profile] : []
    content {
      avatar       = profile.value.avatar
      color        = profile.value.color
      display_name = profile.value.display_name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

