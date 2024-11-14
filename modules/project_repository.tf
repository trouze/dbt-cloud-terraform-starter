# modules/project_repositories.tf
resource "dbtcloud_project_repository" "project_repositories" {
  for_each = var.project_repositories

  project_id    = each.value.project_id
  repository_id = each.value.repository_id
}
