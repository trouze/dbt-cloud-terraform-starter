resource "dbtcloud_project" "terraform_managed_resource_381786" {
  dbt_project_subdirectory = "projects/project_a"
  name                     = "tylers mskcc demo"
}

resource "dbtcloud_project_repository" "terraform_managed_resource_381786" {
  project_id    = dbtcloud_project.terraform_managed_resource_381786.id
  repository_id = dbtcloud_repository.terraform_managed_resource_232257.repository_id
}

resource "dbtcloud_environment" "terraform_managed_resource_331245" {
  connection_id     = dbtcloud_global_connection.terraform_managed_resource_208170.id
  dbt_version       = "versionless"
  name              = "Development"
  project_id        = dbtcloud_project.terraform_managed_resource_381786.id
  type              = "development"
  use_custom_branch = false
}

resource "dbtcloud_environment" "terraform_managed_resource_331249" {
  connection_id     = dbtcloud_global_connection.terraform_managed_resource_208170.id
  credential_id     = "---TBD---credential type not supported yet---"
  custom_branch     = "main"
  dbt_version       = "versionless"
  deployment_type   = "production"
  name              = "Production Environment"
  project_id        = dbtcloud_project.terraform_managed_resource_381786.id
  type              = "deployment"
  use_custom_branch = true
}

resource "dbtcloud_environment_variable" "terraform_managed_resource_381786_DBT_DEFAULT_CATALOG" {
  environment_values = {
    Development              = "dbt_development"
    "Production Environment" = "default"
    project                  = "dbt_development"
  }
  name       = "DBT_DEFAULT_CATALOG"
  project_id = dbtcloud_project.terraform_managed_resource_381786.id
  depends_on = [
    dbtcloud_environment.terraform_managed_resource_331245,
    dbtcloud_environment.terraform_managed_resource_331249,
  ]
}

resource "dbtcloud_environment_variable" "terraform_managed_resource_381786_DBT_USER" {
  environment_values = {
    project = "none"
  }
  name       = "DBT_USER"
  project_id = dbtcloud_project.terraform_managed_resource_381786.id
}

resource "dbtcloud_job" "terraform_managed_resource_726932" {
  environment_id       = dbtcloud_environment.terraform_managed_resource_331249.environment_id
  execute_steps        = ["dbt run"]
  generate_docs        = false
  name                 = "Production job"
  num_threads          = 4
  project_id           = dbtcloud_project.terraform_managed_resource_381786.id
  run_compare_changes  = false
  run_generate_sources = false
  schedule_cron        = "9 */12 * * 0,1,2,3,4,5,6"
  schedule_type        = "custom_cron"
  target_name          = "default"
  timeout_seconds      = 0
  triggers = {
    git_provider_webhook = false
    github_webhook       = false
    on_merge             = false
    schedule             = false
  }
  triggers_on_draft_pr = false
}

resource "dbtcloud_job" "terraform_managed_resource_726989" {
  deferring_environment_id = 331249
  environment_id           = dbtcloud_environment.terraform_managed_resource_331249.environment_id
  execute_steps            = ["dbt run-operation log_env", "dbt run --select state:modified+"]
  generate_docs            = false
  name                     = "CI job"
  num_threads              = 4
  project_id               = dbtcloud_project.terraform_managed_resource_381786.id
  run_compare_changes      = false
  run_generate_sources     = false
  schedule_cron            = "9 */12 * * 0,1,2,3,4,5,6"
  schedule_type            = "custom_cron"
  target_name              = "default"
  timeout_seconds          = 0
  triggers = {
    git_provider_webhook = false
    github_webhook       = false
    on_merge             = false
    schedule             = false
  }
  triggers_on_draft_pr = false
}

resource "dbtcloud_job" "terraform_managed_resource_727191" {
  deferring_environment_id = 331249
  environment_id           = dbtcloud_environment.terraform_managed_resource_331249.environment_id
  execute_steps            = ["dbt run --select state:modified+", "dbt run-operation drop_pr_catalogs"]
  generate_docs            = false
  name                     = "Merge job"
  num_threads              = 4
  project_id               = dbtcloud_project.terraform_managed_resource_381786.id
  run_compare_changes      = false
  run_generate_sources     = false
  schedule_cron            = "9 */12 * * 0,1,2,3,4,5,6"
  schedule_type            = "custom_cron"
  target_name              = "default"
  timeout_seconds          = 0
  triggers = {
    git_provider_webhook = false
    github_webhook       = false
    on_merge             = false
    schedule             = false
  }
  triggers_on_draft_pr = false
}

