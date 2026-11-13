output "tags_id" {
  description = "Map of id values across all tags, keyed the same as var.tags"
  value       = { for k, v in docker_tag.tags : k => v.id }
}
output "tags_source_image" {
  description = "Map of source_image values across all tags, keyed the same as var.tags"
  value       = { for k, v in docker_tag.tags : k => v.source_image }
}
output "tags_source_image_id" {
  description = "Map of source_image_id values across all tags, keyed the same as var.tags"
  value       = { for k, v in docker_tag.tags : k => v.source_image_id }
}
output "tags_tag_triggers" {
  description = "Map of tag_triggers values across all tags, keyed the same as var.tags"
  value       = { for k, v in docker_tag.tags : k => v.tag_triggers }
}
output "tags_target_image" {
  description = "Map of target_image values across all tags, keyed the same as var.tags"
  value       = { for k, v in docker_tag.tags : k => v.target_image }
}

