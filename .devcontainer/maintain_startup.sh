# codespace secrets are forced all caps which conflicts with terraform
export TF_VAR_dbt_account_id=$TF_VAR_DBT_ACCOUNT_ID
export TF_VAR_dbt_token=$TF_VAR_DBT_TOKEN
export TF_VAR_dbt_host_url=$TF_VAR_DBT_HOST_URL

# initialize terraform
terraform init