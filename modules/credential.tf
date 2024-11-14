# credentials.tf

resource "dbtcloud_databricks_credential" "credentials" {
  for_each = var.credentials

  adapter_type = "databricks"
  project_id   = each.value.project_id
  schema       = each.value.schema
  target_name  = each.value.target_name
  token        = each.value.token
}
