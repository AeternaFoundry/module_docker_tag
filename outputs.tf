output "tags_id" {
  description = "Map of id values across all tags, keyed the same as var.tags except keys with no id are omitted"
  value       = { for k, v in docker_tag.tags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tags_source_image" {
  description = "Map of source_image values across all tags, keyed the same as var.tags except keys with no source_image are omitted"
  value       = { for k, v in docker_tag.tags : k => v.source_image if v.source_image != null && length(v.source_image) > 0 }
}
output "tags_source_image_id" {
  description = "Map of source_image_id values across all tags, keyed the same as var.tags except keys with no source_image_id are omitted"
  value       = { for k, v in docker_tag.tags : k => v.source_image_id if v.source_image_id != null && length(v.source_image_id) > 0 }
}
output "tags_tag_triggers" {
  description = "Map of tag_triggers values across all tags, keyed the same as var.tags except keys with no tag_triggers are omitted"
  value       = { for k, v in docker_tag.tags : k => v.tag_triggers if v.tag_triggers != null && length(v.tag_triggers) > 0 }
}
output "tags_target_image" {
  description = "Map of target_image values across all tags, keyed the same as var.tags except keys with no target_image are omitted"
  value       = { for k, v in docker_tag.tags : k => v.target_image if v.target_image != null && length(v.target_image) > 0 }
}

