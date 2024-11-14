// define the variables we will use
variable "dbt_account_id" {
  type = number
}

variable "dbt_token" {
  type = string
}

variable "dbt_host_url" {
  type = string
}

terraform {
    required_providers {
        dbtcloud = {
            source = "dbt-labs/dbtcloud"
            version = "~> 0.3"
        }
    }
}

provider "dbtcloud" {
  account_id = var.dbt_account_id
  token      = var.dbt_token
  host_url   = var.dbt_host_url
}

module "account" {
  source = "./dbt_cloud/account"
}

module "project" {
  source = "./dbt_cloud/projects"
}