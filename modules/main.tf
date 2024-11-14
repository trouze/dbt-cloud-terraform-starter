# main.tf

# Roll up the connection resources from connections.tf
module "connections" {
  source = "./connection.tf"
  connections = var.connections
}

module "credentials" {
  source = "./credential.tf"
  credentials = var.credentials
}

module "repositories" {
  source      = "./repository.tf"
  repositories = var.repositories
}

# modules/main.tf
module "projects" {
  source = "./project.tf"
  projects = var.projects
}

# modules/main.tf
module "project_repositories" {
  source = "./project_repository.tf"
  project_repositories = var.project_repositories
}

module "environments" {
  source     = "./environment.tf"
  environments = var.environments
}

module "env_vars" {
  source  = "./environment_variable.tf"
  env_vars = var.env_vars
}

module "jobs" {
  source = "./job.tf"
  jobs   = var.jobs
}
