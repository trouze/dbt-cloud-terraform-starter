resource "dbtcloud_environment_variable" "env_vars" {
  for_each = var.env_vars

  name             = each.value.name
  environment_values = each.value.environment_values
  project_id       = each.value.project_id

  # Conditionally add depends_on if specified
  depends_on = lookup(each.value, "depends_on", [])
}
