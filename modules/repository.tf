# modules/repositories.tf
resource "dbtcloud_repository" "repositories" {
  for_each = var.repositories

  git_clone_strategy        = each.value.git_clone_strategy
  github_installation_id    = each.value.github_installation_id
  project_id                = each.value.project_id
  pull_request_url_template = each.value.pull_request_url_template
  remote_url                = each.value.remote_url
}
