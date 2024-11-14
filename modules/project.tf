# modules/projects.tf
resource "dbtcloud_project" "projects" {
  for_each = var.projects

  dbt_project_subdirectory = each.value.dbt_project_subdirectory
  name                     = each.value.name
}
