resource "dbtcloud_environment" "environments" {
  for_each = var.environments

  connection_id     = each.value.connection_id
  dbt_version       = each.value.dbt_version
  name              = each.value.name
  project_id        = each.value.project_id
  type              = each.value.type
  use_custom_branch = each.value.use_custom_branch

  # Conditionally include optional parameters for deployment environments
  credential_id     = lookup(each.value, "credential_id", null)
  custom_branch     = lookup(each.value, "custom_branch", null)
  deployment_type   = lookup(each.value, "deployment_type", null)
}
