resource "docker_tag" "tags" {
  for_each = var.tags

  source_image = each.value.source_image
  target_image = each.value.target_image
  tag_triggers = each.value.tag_triggers
}

