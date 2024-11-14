resource "dbtcloud_global_connection" "connections" {
  for_each = var.connections

  name = each.value.name

  databricks = {
    catalog   = each.value.databricks.catalog
    host      = each.value.databricks.host
    http_path = each.value.databricks.http_path

    # Conditionally include client_id and client_secret if they are provided
    client_id     = lookup(each.value.databricks, "client_id", null)
    client_secret = lookup(each.value.databricks, "client_secret", null)
  }
}
