terraform {
  required_providers {
    dbtcloud = {
      source = "dbt-labs/dbtcloud"
    }
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_52200" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPER"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_207456" {
  name = "SA Snowflake - Tyler"
  snowflake = {
    account                   = "zna84829"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "TROUZEDB"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_53789" {
  name = "Redshift"
  redshift = {
    dbname   = "dev"
    hostname = "dbt-sales-demo.cqs4tgbjld3e.us-east-2.redshift.amazonaws.com"
    port     = 5439
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_51284" {
  name = "Snowflake Sandbox"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_208065" {
  name = "Snowflake Sandbox - Zach"
  snowflake = {
    account                   = "SKA67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "STAGING"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_52137" {
  bigquery = {
    application_id              = "---TBD---"
    application_secret          = "---TBD---"
    auth_provider_x509_cert_url = "https://www.googleapis.com/oauth2/v1/certs"
    auth_uri                    = "https://accounts.google.com/o/oauth2/auth"
    client_email                = "dbt-cloud@sales-demo-project-314714.iam.gserviceaccount.com"
    client_id                   = "111827966431362060598"
    client_x509_cert_url        = "https://www.googleapis.com/robot/v1/metadata/x509/dbt-cloud%40sales-demo-project-314714.iam.gserviceaccount.com"
    gcp_project_id              = "sales-demo-project-314714"
    private_key                 = "---TBD---"
    private_key_id              = "6675dfbb80e8c127bb93700be7b40bc0acf9e5f1"
    retries                     = 1
    timeout_seconds             = 300
    token_uri                   = "https://oauth2.googleapis.com/token"
  }
  name = "Bigquery"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_74563" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "ANALYTICS"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_127078" {
  bigquery = {
    application_id              = "---TBD---"
    application_secret          = "---TBD---"
    auth_provider_x509_cert_url = "https://www.googleapis.com/oauth2/v1/certs"
    auth_uri                    = "https://accounts.google.com/o/oauth2/auth"
    client_email                = "dbt-cloud@lauren-sandbox.iam.gserviceaccount.com"
    client_id                   = "115300955350283704428"
    client_x509_cert_url        = "https://www.googleapis.com/robot/v1/metadata/x509/dbt-cloud%40lauren-sandbox.iam.gserviceaccount.com"
    gcp_project_id              = "lauren-sandbox"
    maximum_bytes_billed        = 0
    priority                    = "batch"
    private_key                 = "---TBD---"
    private_key_id              = "613bbf45bc88ddfd4cee968dc2133d7495ff0519"
    retries                     = 1
    timeout_seconds             = 300
    token_uri                   = "https://oauth2.googleapis.com/token"
  }
  name = "BigQuery"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_214605" {
  databricks = {
    catalog   = "dbt_zcooper_stg"
    host      = "dbc-c7c89cba-cf9b.cloud.databricks.com"
    http_path = "/sql/1.0/warehouses/07bb14a8596beb78"
  }
  name = "Databricks"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_203604" {
  databricks = {
    catalog   = ""
    host      = "dbc-c7c89cba-cf9b.cloud.databricks.com"
    http_path = "sql/protocolv1/o/3718560678585456/0429-171952-h04y5gm6"
  }
  name = "Databricks"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103352" {
  name = "SL Snowflake - Jess Williams"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_90385" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "ANALYTICS"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_112087" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "development"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_51418" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "development"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_149794" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "ANALYTICS"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_170687" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "ANALYTICS"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_106827" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = true
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_174823" {
  name = "Snowflake - Jerrie"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "DEVELOPEMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_87134" {
  name = "Snowflake Sandbox"
  snowflake = {
    account                   = "yda41575"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "DBT_PROJECT_EVALUATOR_DEMO"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "DBT_PROJECT_EVALUATOR_DEMO"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_129047" {
  databricks = {
    catalog   = ""
    host      = "dbc-88636ef1-59c4.cloud.databricks.com"
    http_path = "/sql/1.0/warehouses/b633a121c93855a0"
  }
  name = "Databricks"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_116029" {
  databricks = {
    catalog   = "dbt_wquader"
    host      = "dbc-c7c89cba-cf9b.cloud.databricks.com"
    http_path = "sql/protocolv1/o/3718560678585456/1214-160944-x3852q7k"
  }
  name = "Databricks"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_57192" {
  name = "Redshift Sandbox"
  redshift = {
    dbname   = "ci"
    hostname = "dbt-sandbox.cpdqymulkrad.us-east-2.redshift.amazonaws.com"
    port     = 5439
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103343" {
  name = "SL Snowflake - Benoit Perigaud"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103344" {
  name = "SL Snowflake - Carol Ohms"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103348" {
  name = "SL Snowflake - Dave Connors"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103350" {
  name = "SL Snowflake - Grace Goheen"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103353" {
  name = "SL Snowflake - Lauren Benezra"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103340" {
  name = "SL Snowflake - Marcus Smart"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103355" {
  name = "SL Snowflake - Pat Kearns"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103356" {
  name = "SL Snowflake - Rebecca Murray"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103357" {
  name = "SL Snowflake - Sam Harting"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_104677" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "ANALYTICS"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_57478" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_197878" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "development"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_99915" {
  name = "Snowflake"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_208170" {
  databricks = {
    catalog       = "dbt_development"
    client_id     = "**********"
    client_secret = "**********"
    host          = "dbc-c7c89cba-cf9b.cloud.databricks.com"
    http_path     = "/sql/1.0/warehouses/07bb14a8596beb78"
  }
  name = "Tylers Databricks Connection"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_60261" {
  bigquery = {
    application_id              = "---TBD---"
    application_secret          = "---TBD---"
    auth_provider_x509_cert_url = "https://www.googleapis.com/oauth2/v1/certs"
    auth_uri                    = "https://accounts.google.com/o/oauth2/auth"
    client_email                = "dbt-test-carol@dbttestproject-350621.iam.gserviceaccount.com"
    client_id                   = "113763530555945608297"
    client_x509_cert_url        = "https://www.googleapis.com/robot/v1/metadata/x509/dbt-test-carol%40dbttestproject-350621.iam.gserviceaccount.com"
    gcp_project_id              = "dbttestproject-350621"
    private_key                 = "---TBD---"
    private_key_id              = "01c7100da498bfcdd22d0935b1eda4d26ef0244c"
    retries                     = 1
    timeout_seconds             = 300
    token_uri                   = "https://oauth2.googleapis.com/token"
  }
  name = "Bigquery"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_51323" {
  bigquery = {
    application_id              = "---TBD---"
    application_secret          = "---TBD---"
    auth_provider_x509_cert_url = "https://www.googleapis.com/oauth2/v1/certs"
    auth_uri                    = "https://accounts.google.com/o/oauth2/auth"
    client_email                = "dbt-cloud@sales-demo-project-314714.iam.gserviceaccount.com"
    client_id                   = "111827966431362060598"
    client_x509_cert_url        = "https://www.googleapis.com/robot/v1/metadata/x509/dbt-cloud%40sales-demo-project-314714.iam.gserviceaccount.com"
    gcp_project_id              = "sales-demo-project-314714"
    private_key                 = "---TBD---"
    private_key_id              = "e4199a369a8871b8441b8839e746ebb19c9d895d"
    retries                     = 1
    timeout_seconds             = 300
    token_uri                   = "https://oauth2.googleapis.com/token"
  }
  name = "Bigquery"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_74742" {
  bigquery = {
    application_id              = "---TBD---"
    application_secret          = "---TBD---"
    auth_provider_x509_cert_url = "https://www.googleapis.com/oauth2/v1/certs"
    auth_uri                    = "https://accounts.google.com/o/oauth2/auth"
    client_email                = "dbtcloud@samsbigquerysandbox.iam.gserviceaccount.com"
    client_id                   = "116871080405792173423"
    client_x509_cert_url        = "https://www.googleapis.com/robot/v1/metadata/x509/dbtcloud%40samsbigquerysandbox.iam.gserviceaccount.com"
    gcp_project_id              = "samsbigquerysandbox"
    private_key                 = "---TBD---"
    private_key_id              = "fa25d8df64895a7c75c2061c36e6f46cd2b0673d"
    retries                     = 1
    timeout_seconds             = 300
    token_uri                   = "https://oauth2.googleapis.com/token"
  }
  name = "BigQuery"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_86832" {
  name = "Coalesce 2022 Snowflake"
  snowflake = {
    account                   = "yda41575"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DAG"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "DAG"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_203589" {
  databricks = {
    catalog   = ""
    host      = "dbc-c7c89cba-cf9b.cloud.databricks.com"
    http_path = "sql/protocolv1/o/3718560678585456/1214-160931-dnh1640n"
  }
  name = "Databricks"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_203594" {
  databricks = {
    catalog   = ""
    host      = "dbc-c7c89cba-cf9b.cloud.databricks.com"
    http_path = "sql/protocolv1/o/3718560678585456/1214-160931-dnh1640n"
  }
  name = "Databricks"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_139965" {
  databricks = {
    catalog   = ""
    host      = "dbc-88636ef1-59c4.cloud.databricks.com"
    http_path = "/sql/1.0/warehouses/b633a121c93855a0"
  }
  name = "Databricks"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_189526" {
  name = "PostgreSQL"
  postgres = {
    dbname   = "postgres"
    hostname = "cse-test.cel0pkf9mm2w.us-east-1.rds.amazonaws.com"
    port     = 5432
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_72549" {
  name = "Snowflake"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "development"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_90293" {
  name = "Snowflake"
  snowflake = {
    account                   = "yda41575"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "packages"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "packages_transformer"
    warehouse                 = "packages"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_178000" {
  name = "Snowflake"
  snowflake = {
    account                   = "SKA67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_80939" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_80088" {
  name = "Snowflake"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_154195" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "ANALYTICS"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_204979" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_152354" {
  name = "Snowflake"
  snowflake = {
    account                   = "SKA67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "COALESCE_23_ADVANCED_TESTING_WORKSHOP"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_141791" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "ANALYTICS"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_141188" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "ANALYTICS"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_213678" {
  name = "Tyler Snowflake 2"
  snowflake = {
    account                   = "zna84829"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "TROUZEDB_JAFFLE_UAT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_56895" {
  bigquery = {
    application_id              = "---TBD---"
    application_secret          = "---TBD---"
    auth_provider_x509_cert_url = "https://www.googleapis.com/oauth2/v1/certs"
    auth_uri                    = "https://accounts.google.com/o/oauth2/auth"
    client_email                = "dbt-user@dbt-tutorial-bregenold.iam.gserviceaccount.com"
    client_id                   = "103079827243194662896"
    client_x509_cert_url        = "https://www.googleapis.com/robot/v1/metadata/x509/dbt-user%40dbt-tutorial-bregenold.iam.gserviceaccount.com"
    gcp_project_id              = "dbt-tutorial-bregenold"
    private_key                 = "---TBD---"
    private_key_id              = "7a0623a7cc99cacb50a62aa969c108d5ec0a0bee"
    retries                     = 1
    timeout_seconds             = 300
    token_uri                   = "https://oauth2.googleapis.com/token"
  }
  name = "Bigquery"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_84980" {
  bigquery = {
    application_id              = "---TBD---"
    application_secret          = "---TBD---"
    auth_provider_x509_cert_url = "https://www.googleapis.com/oauth2/v1/certs"
    auth_uri                    = "https://accounts.google.com/o/oauth2/auth"
    client_email                = "dbt-sandbox-admin@interview-task-0922.iam.gserviceaccount.com"
    client_id                   = "107463906649248426658"
    client_x509_cert_url        = "https://www.googleapis.com/robot/v1/metadata/x509/dbt-sandbox-admin%40interview-task-0922.iam.gserviceaccount.com"
    gcp_project_id              = "interview-task-0922"
    maximum_bytes_billed        = 0
    private_key                 = "---TBD---"
    private_key_id              = "62f58b07ce22ac496ed7fe1baa59f4be543bb88f"
    retries                     = 1
    timeout_seconds             = 300
    token_uri                   = "https://oauth2.googleapis.com/token"
  }
  name = "Bigquery"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_51701" {
  bigquery = {
    application_id              = "---TBD---"
    application_secret          = "---TBD---"
    auth_provider_x509_cert_url = "https://www.googleapis.com/oauth2/v1/certs"
    auth_uri                    = "https://accounts.google.com/o/oauth2/auth"
    client_email                = "dbt-cloud@sales-demo-project-314714.iam.gserviceaccount.com"
    client_id                   = "111827966431362060598"
    client_x509_cert_url        = "https://www.googleapis.com/robot/v1/metadata/x509/dbt-cloud%40sales-demo-project-314714.iam.gserviceaccount.com"
    gcp_project_id              = "sales-demo-project-314714"
    private_key                 = "---TBD---"
    private_key_id              = "5629fe8c9cd8ae79bbd0c8ce83a3d260b8015b24"
    retries                     = 1
    timeout_seconds             = 300
    token_uri                   = "https://oauth2.googleapis.com/token"
  }
  name = "Bigquery"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_85234" {
  bigquery = {
    application_id              = "---TBD---"
    application_secret          = "---TBD---"
    auth_provider_x509_cert_url = "https://www.googleapis.com/oauth2/v1/certs"
    auth_uri                    = "https://accounts.google.com/o/oauth2/auth"
    client_email                = "dbt-sandbox-bigquery@psyched-garage-359816.iam.gserviceaccount.com"
    client_id                   = "101311027222128699331"
    client_x509_cert_url        = "https://www.googleapis.com/robot/v1/metadata/x509/dbt-sandbox-bigquery%40psyched-garage-359816.iam.gserviceaccount.com"
    gcp_project_id              = "psyched-garage-359816"
    priority                    = "interactive"
    private_key                 = "---TBD---"
    private_key_id              = "ec5b155fe65705ca5e9b1069d15d7edf2a99fb34"
    retries                     = 1
    timeout_seconds             = 300
    token_uri                   = "https://oauth2.googleapis.com/token"
  }
  name = "Bigquery"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_57941" {
  bigquery = {
    application_id              = "---TBD---"
    application_secret          = "---TBD---"
    auth_provider_x509_cert_url = "https://www.googleapis.com/oauth2/v1/certs"
    auth_uri                    = "https://accounts.google.com/o/oauth2/auth"
    client_email                = "dbt-user@dbt-tutorial-bregenold.iam.gserviceaccount.com"
    client_id                   = "103079827243194662896"
    client_x509_cert_url        = "https://www.googleapis.com/robot/v1/metadata/x509/dbt-user%40dbt-tutorial-bregenold.iam.gserviceaccount.com"
    gcp_project_id              = "dbt-tutorial-bregenold"
    private_key                 = "---TBD---"
    private_key_id              = "7a0623a7cc99cacb50a62aa969c108d5ec0a0bee"
    retries                     = 1
    timeout_seconds             = 300
    token_uri                   = "https://oauth2.googleapis.com/token"
  }
  name = "Bigquery"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_100517" {
  bigquery = {
    application_id              = "---TBD---"
    application_secret          = "---TBD---"
    auth_provider_x509_cert_url = "https://www.googleapis.com/oauth2/v1/certs"
    auth_uri                    = "https://accounts.google.com/o/oauth2/auth"
    client_email                = "dbt-user@cgbqsandbox.iam.gserviceaccount.com"
    client_id                   = "114665401042980672785"
    client_x509_cert_url        = "https://www.googleapis.com/robot/v1/metadata/x509/dbt-user%40cgbqsandbox.iam.gserviceaccount.com"
    gcp_project_id              = "cgbqsandbox"
    private_key                 = "---TBD---"
    private_key_id              = "2df1ab4924e84e07859489691fab4efee059478b"
    retries                     = 1
    timeout_seconds             = 300
    token_uri                   = "https://oauth2.googleapis.com/token"
  }
  name = "BigQuery"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_47661" {
  bigquery = {
    application_id              = "---TBD---"
    application_secret          = "---TBD---"
    auth_provider_x509_cert_url = "https://www.googleapis.com/oauth2/v1/certs"
    auth_uri                    = "https://accounts.google.com/o/oauth2/auth"
    client_email                = "dbt-cloud@quantum-feat-328717.iam.gserviceaccount.com"
    client_id                   = "104742270433893726116"
    client_x509_cert_url        = "https://www.googleapis.com/robot/v1/metadata/x509/dbt-cloud%40quantum-feat-328717.iam.gserviceaccount.com"
    gcp_project_id              = "quantum-feat-328717"
    private_key                 = "---TBD---"
    private_key_id              = "7db6482a042d7acbdd1ae610509bc542cb70a8b4"
    retries                     = 1
    timeout_seconds             = 300
    token_uri                   = "https://oauth2.googleapis.com/token"
  }
  name = "BigQuery (Elize's project)"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_51210" {
  bigquery = {
    application_id              = "---TBD---"
    application_secret          = "---TBD---"
    auth_provider_x509_cert_url = "https://www.googleapis.com/oauth2/v1/certs"
    auth_uri                    = "https://accounts.google.com/o/oauth2/auth"
    client_email                = "dbt-cloud@sales-demo-project-314714.iam.gserviceaccount.com"
    client_id                   = "111827966431362060598"
    client_x509_cert_url        = "https://www.googleapis.com/robot/v1/metadata/x509/dbt-cloud%40sales-demo-project-314714.iam.gserviceaccount.com"
    gcp_project_id              = "sales-demo-project-314714"
    maximum_bytes_billed        = 0
    private_key                 = "---TBD---"
    private_key_id              = "72689bd2caac9f75eaa0a7346b94ee139a61d8a4"
    retries                     = 1
    timeout_seconds             = 300
    token_uri                   = "https://oauth2.googleapis.com/token"
  }
  name = "BigQuery Sandbox"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_109217" {
  databricks = {
    catalog   = ""
    host      = "dbc-c7c89cba-cf9b.cloud.databricks.com"
    http_path = "/sql/1.0/warehouses/153fd2c5329a8dcc"
  }
  name = "Databricks"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_179220" {
  databricks = {
    catalog   = ""
    host      = "dbc-c7c89cba-cf9b.cloud.databricks.com"
    http_path = "sql/protocolv1/o/3718560678585456/1214-160931-dnh1640n"
  }
  name = "Databricks"
}

resource "dbtcloud_global_connection" "terraform_managed_resource_51704" {
  name = "Redshift"
  redshift = {
    dbname   = "dev"
    hostname = "dbt-sales-demo.cqs4tgbjld3e.us-east-2.redshift.amazonaws.com"
    port     = 5439
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_53625" {
  name = "Redshift"
  redshift = {
    dbname   = "dev"
    hostname = "dbt-sales-demo.cqs4tgbjld3e.us-east-2.redshift.amazonaws.com"
    port     = 5439
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_56892" {
  name = "Redshift"
  redshift = {
    dbname   = "dev"
    hostname = "dbt-sales-demo.cqs4tgbjld3e.us-east-2.redshift.amazonaws.com"
    port     = 5439
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_189344" {
  name = "Redshift"
  redshift = {
    dbname   = "dev"
    hostname = "dbt-sales-demo.cqs4tgbjld3e.us-east-2.redshift.amazonaws.com"
    port     = 5439
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103052" {
  name = "SL Snowflake - Al Horford"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103322" {
  name = "SL Snowflake - Angelica Lastra"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103059" {
  name = "SL Snowflake - Angelica Lastra"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103341" {
  name = "SL Snowflake - Angelica Lastra"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103323" {
  name = "SL Snowflake - Bennie Regenold"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103342" {
  name = "SL Snowflake - Bennie Regenold"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103060" {
  name = "SL Snowflake - Bennie Regenold"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103061" {
  name = "SL Snowflake - Benoit Perigaud"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103324" {
  name = "SL Snowflake - Benoit Perigaud"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103062" {
  name = "SL Snowflake - Carol Ohms"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103325" {
  name = "SL Snowflake - Carol Ohms"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103327" {
  name = "SL Snowflake - Carolyn Ghosh"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103063" {
  name = "SL Snowflake - Carolyn Ghosh"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103345" {
  name = "SL Snowflake - Carolyn Ghosh"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103328" {
  name = "SL Snowflake - Christine Berger"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103064" {
  name = "SL Snowflake - Christine Berger"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103347" {
  name = "SL Snowflake - Christine Berger"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103329" {
  name = "SL Snowflake - Dave Connors"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103065" {
  name = "SL Snowflake - Dave Connors"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103330" {
  name = "SL Snowflake - Deanna Minnick"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103067" {
  name = "SL Snowflake - Deanna Minnick"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103349" {
  name = "SL Snowflake - Deanna Minnick"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103068" {
  name = "SL Snowflake - Grace Goheen"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103331" {
  name = "SL Snowflake - Grace Goheen"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103054" {
  name = "SL Snowflake - Grant Williams"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103069" {
  name = "SL Snowflake - Ilan Gendellman"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103332" {
  name = "SL Snowflake - Ilan Gendellman"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103351" {
  name = "SL Snowflake - Ilan Gendellman"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103045" {
  name = "SL Snowflake - Jaylen Brown"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103313" {
  name = "SL Snowflake - Jayson Tatum"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103317" {
  name = "SL Snowflake - Jayson Tatum"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103310" {
  name = "SL Snowflake - Jayson Tatum"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103320" {
  name = "SL Snowflake - Jayson Tatum"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103319" {
  name = "SL Snowflake - Jayson Tatum"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103030" {
  name = "SL Snowflake - Jayson Tatum"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103070" {
  name = "SL Snowflake - Jess Williams"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103333" {
  name = "SL Snowflake - Jess Williams"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103071" {
  name = "SL Snowflake - Lauren Benezra"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103334" {
  name = "SL Snowflake - Lauren Benezra"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103321" {
  name = "SL Snowflake - Marcus Smart"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103315" {
  name = "SL Snowflake - Marcus Smart"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103335" {
  name = "SL Snowflake - Nicholas Yager"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103354" {
  name = "SL Snowflake - Nicholas Yager"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103072" {
  name = "SL Snowflake - Nicholas Yager"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103073" {
  name = "SL Snowflake - Pat Kearns"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103336" {
  name = "SL Snowflake - Pat Kearns"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103048" {
  name = "SL Snowflake - Payton Pritchard"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103051" {
  name = "SL Snowflake - Payton Pritchard"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103049" {
  name = "SL Snowflake - Payton Pritchard"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103337" {
  name = "SL Snowflake - Rebecca Murray"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103074" {
  name = "SL Snowflake - Rebecca Murray"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103338" {
  name = "SL Snowflake - Sam Harting"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103075" {
  name = "SL Snowflake - Sam Harting"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103339" {
  name = "SL Snowflake - Wasila Quader"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103358" {
  name = "SL Snowflake - Wasila Quader"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_103076" {
  name = "SL Snowflake - Wasila Quader"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_57280" {
  name = "snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_105512" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "development"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_162740" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "ANALYTICS"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_174024" {
  name = "Snowflake"
  snowflake = {
    account                   = "SKA67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_174042" {
  name = "Snowflake"
  snowflake = {
    account                   = "SKA67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_174309" {
  name = "Snowflake"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "ANALYTICS"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_175675" {
  name = "Snowflake"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "ANALYTICS"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_120246" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_128872" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "ANALYTICS"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_129008" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_119483" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_134706" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_134715" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_135545" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "ANALYTICS"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "ANALYTICS"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_106109" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_51324" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "development"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "public"
    warehouse                 = "analytics"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_122893" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    warehouse                 = "ANALYTICS"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_128868" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "ANALYTICS"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_189525" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_90023" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_190547" {
  name = "Snowflake"
  snowflake = {
    account                   = "fka50167"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "analytics"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "transformer"
    warehouse                 = "transforming"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_85210" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "ANALYTICS"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_85197" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "ANALYTICS"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_80683" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_52146" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_51664" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "ANALYTICS"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_51487" {
  name = "Snowflake"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_51204" {
  name = "Snowflake Sandbox"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = true
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_72524" {
  name = "Snowflake Sandbox"
  snowflake = {
    account                   = "ska67070"
    allow_sso                 = false
    client_session_keep_alive = false
    database                  = "DEVELOPMENT"
    oauth_client_id           = "---TBD---"
    oauth_client_secret       = "---TBD---"
    role                      = "TRANSFORMER"
    warehouse                 = "TRANSFORMING"
  }
}

resource "dbtcloud_global_connection" "terraform_managed_resource_214156" {
  databricks = {
    catalog   = "{{ env_var('DBT_DEFAULT_CATALOG') }}"
    host      = "dbc-c7c89cba-cf9b.cloud.databricks.com"
    http_path = "/sql/1.0/warehouses/07bb14a8596beb78"
  }
  name = "Tylers Databricks Connection"
}

resource "dbtcloud_databricks_credential" "terraform_managed_resource_418117" {
  adapter_type = "databricks"
  project_id   = dbtcloud_project.terraform_managed_resource_381786.id
  schema       = "---TBD---"
  target_name  = "default"
  token        = "---TBD---"
}

resource "dbtcloud_repository" "terraform_managed_resource_232257" {
  git_clone_strategy        = "github_app"
  github_installation_id    = 54100835
  project_id                = dbtcloud_project.terraform_managed_resource_381786.id
  pull_request_url_template = "https://github.com/trouze/mskcc-demo/compare/{{destination}}...{{source}}"
  remote_url                = "git://github.com/trouze/mskcc-demo.git"
}

