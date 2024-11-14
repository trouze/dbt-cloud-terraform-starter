output "connection_ids" {
  description = "The IDs of the created dbtcloud global connections"
  value = { for conn, resource in dbtcloud_global_connection.connections : conn => resource.id }
}

output "project_ids" {
  description = "The IDs of the created dbtcloud projects"
  value = { for proj, resource in dbtcloud_project.projects : proj => resource.id }
}

output "environment_ids" {
  description = "The IDs of the created dbtcloud environments"
  value = { for env, resource in dbtcloud_environment.environments : env => resource.id }
}

output "repository_ids" {
  description = "The IDs of the created dbtcloud repositories"
  value = { for repo, resource in dbtcloud_repository.repositories : repo => resource.repository_id }
}

output "job_ids" {
  description = "The IDs of the created dbtcloud jobs"
  value = { for job, resource in dbtcloud_job.jobs : job => resource.job_id }
}

output "credential_ids" {
  description = "The IDs of the created dbtcloud credentials"
  value = { for credential, resource in dbtcloud_databricks_credential.credentials : credential => resource.credential_id }
}