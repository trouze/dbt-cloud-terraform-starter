# codespace secrets are forced all caps which conflicts with terraform
export TF_VAR_dbt_account_id=$TF_VAR_DBT_ACCOUNT_ID
export TF_VAR_dbt_token=$TF_VAR_DBT_TOKEN
export TF_VAR_dbt_host_url=$TF_VAR_DBT_HOST_URL

# initialize terraform
terraform init

# write dbtcloud_global_connection (no links) to account_connections.tf
dbtcloud-terraforming -a ${TF_VAR_dbt_account_id} -t ${TF_VAR_dbt_token} --host-url ${TF_VAR_dbt_host_url} generate --resource-types dbtcloud_global_connection > account_connections.tf 2>&1

# write dbtcloud_databricks_credential to account_credentials.tf and link to 
dbtcloud-terraforming -a ${TF_VAR_dbt_account_id} -t ${TF_VAR_dbt_token} --host-url ${TF_VAR_dbt_host_url} generate --resource-types dbtcloud_snowflake_credential --linked-resource-types dbtcloud_project > account_credentials.tf 2>&1

# write dbtcloud_repository to account_repositories.tf linked to project
dbtcloud-terraforming -a ${TF_VAR_dbt_account_id} -t ${TF_VAR_dbt_token} --host-url ${TF_VAR_dbt_host_url} generate --resource-types dbtcloud_repository --linked-resource-types dbtcloud_project > account_repositories.tf 2>&1

# write project, environment, env vars, and jobs to project file
dbtcloud-terraforming -a ${TF_VAR_dbt_account_id} -t ${TF_VAR_dbt_token} --host-url ${TF_VAR_dbt_host_url} generate --resource-types dbtcloud_project,dbtcloud_project_repository,dbtcloud_environment,dbtcloud_environment_variable,dbtcloud_job --linked-resource-types all > project.tf 2>&1