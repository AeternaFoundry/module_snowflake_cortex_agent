variable "cortex_agents" {
  description = <<EOT
Map of cortex_agents, attributes below
Required:
    - database
    - name
    - schema
    - specification
Optional:
    - comment
    - profile (block):
        - avatar (optional)
        - color (optional)
        - display_name (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database      = string
    name          = string
    schema        = string
    specification = string
    comment       = optional(string)
    profile = optional(object({
      avatar       = optional(string)
      color        = optional(string)
      display_name = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

