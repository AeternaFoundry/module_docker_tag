variable "tags" {
  description = <<EOT
Map of tags, attributes below
Required:
    - source_image
    - target_image
Optional:
    - tag_triggers
EOT

  type = map(object({
    source_image = string
    target_image = string
    tag_triggers = optional(set(string))
  }))
}

