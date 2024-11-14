resource "dbtcloud_databricks_credential" "terraform_managed_resource_418117" {
  adapter_type = "databricks"
  project_id   = dbtcloud_project.terraform_managed_resource_381786.id
  schema       = "---TBD---"
  target_name  = "default"
  token        = "---TBD---"
}

