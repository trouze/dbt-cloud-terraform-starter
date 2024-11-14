# connections
variable "connections" {
  description = "A map of connections, each containing their properties"
  type = map(object({
    name = string
    databricks = object({
      catalog   = string
      host      = string
      http_path = string
      client_id     = string
      client_secret = string
    })
  }))
  default = {}
}

# credentials
variable "credentials" {
  description = "A map of Databricks credentials"
  type = map(object({
    project_id  = string
    schema      = string
    target_name = string
    token       = string
  }))
  default = {}
}

# repo
variable "repositories" {
  description = "Map of repositories to be created for dbtcloud"
  type = map(object({
    git_clone_strategy        = string
    github_installation_id    = number
    project_id                = string
    pull_request_url_template = string
    remote_url                = string
  }))
}

# modules/variables.tf
variable "projects" {
  description = "Map of projects to be created for dbtcloud"
  type = map(object({
    dbt_project_subdirectory = string
    name                     = string
  }))
}

# project repo
# modules/variables.tf
variable "project_repositories" {
  description = "Map of project-repository links"
  type = map(object({
    project_id    = string
    repository_id = string
  }))
}

# envs
variable "environments" {
  description = "Map of environments (development and deployment)"
  type = map(object({
    connection_id     = string
    dbt_version       = string
    name              = string
    project_id        = string
    type              = string
    use_custom_branch = bool
    # Optional parameters for deployment type environments
    credential_id     = optional(string)
    custom_branch     = optional(string)
    deployment_type   = optional(string)
  }))
}

# env vars
variable "env_vars" {
  description = "Map of environment variables to be set"
  type = map(object({
    name             = string
    environment_values = map(string)
    project_id       = string
    depends_on       = optional(list(string))
  }))
}

variable "jobs" {
  description = "Map of dbtcloud jobs configurations"
  type = map(object({
    name                      = string
    environment_id            = string
    deferring_environment_id  = optional(string)
    execute_steps             = list(string)
    generate_docs             = bool
    num_threads               = number
    project_id                = string
    run_compare_changes       = bool
    run_generate_sources      = bool
    schedule_cron             = string
    schedule_type             = string
    target_name               = string
    timeout_seconds           = number
    triggers                  = map(bool)
    triggers_on_draft_pr      = bool
  }))
}
