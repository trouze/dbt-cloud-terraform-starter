resource "dbtcloud_repository" "terraform_managed_resource_232257" {
  git_clone_strategy        = "github_app"
  github_installation_id    = 54100835
  project_id                = dbtcloud_project.terraform_managed_resource_381786.id
  pull_request_url_template = "https://github.com/trouze/mskcc-demo/compare/{{destination}}...{{source}}"
  remote_url                = "git://github.com/trouze/mskcc-demo.git"
}

