# Preamble

<aside>
🗣 Audience: Anyone that works on a platform team implementing data mesh patterns

</aside>

dbt Cloud is changing every day to add functionality to enable data teams to better deliver value to the enterprise. One of our biggest releases in the past year has been the addition of features supporting a data mesh architecture (what we call the dbt Mesh). We see many customers come to us hoping to implement patterns that come from this architecture, but it commonly means a lot of setup (i.e. “clickops”) within our application to get going. This is because successful mesh implementations usually rely upon a “platform” team or architect that sets standards that each team should adhere to within their dbt project. In practice, this means you need to setup at least 3 jobs in dbt Cloud for each project (deploy, CI, merge), which can mean a lot of clicking to create something that is pretty identical for each project. So, our solution to this could include the use of an IaC (infrastructure-as-code) tool.

This page will walk you through setup to enable the creation of a repository that stores your dbt Cloud configurations as code and makes it easy to deploy new projects to dbt Cloud (and update them in bulk!).

# Your First dbt Cloud Project

I recommend taking the time to set up your first project in the dbt Cloud UI (and working with a [dbt Labs Resident Architect](https://www.getdbt.com/services) to help!) to set the initial frame for the configurations other projects should inherit. This unblocks you from needing to figure out Terraform before being able to get value out of dbt Cloud, and will actually help us save time as we can download these initial configurations from dbt Cloud into pre-built terraform resources via the [dbtcloud-terraforming](https://github.com/dbt-labs/dbtcloud-terraforming/tree/main) package. We won’t get into the details of this initial setup, that’s a topic for another tutorial, but you should create the project, global connections, environments, and jobs to start.

# Init the Repository

## Defining Secrets in the Repo

Terraform takes a `terraform.tfvars` file for your credentials etc. We can use environment variables to pass values here (such that we can automate the deployment process) using the pattern `TF_VAR_variable_name`. See [docs](https://developer.hashicorp.com/terraform/language/values/variables#environment-variables). For this project, we’ll define values for our dbt Cloud account ID, access token, and host url.

- `TF_VAR_dbt_account_id`
- `TF_VAR_dbt_token`
- `TF_VAR_dbt_host_url`

To use, go ahead and copy this template repository to your organization and start up a codespace on this repo. Review the Dockerfile and devcontainer configuration if you wish, but this will set up a development environment that pulls down your current dbt Cloud resource configurations into a few files. From here, you can push these files to a feature branch and open your first pull request on this repository.

Upon merge, a deployment action will run that updates the infrastructure and stores the state in a Github artifact. 

Disclaimer: This template repo gives you some tools to manage Terraform state from entirely within Github, this likely isn't a best practice for your organization as you should probably use an external tool to do this like Terraform Cloud or an external storage bucket. In this implementation, we make use of Github Artifacts which are usually limited to 90 days of storage if they go untouched. To emulate state locking in other solutions, we prevent concurrent builds from ocurring via a configuration in the deployment action, but this probably isn't as full featured as another solution.