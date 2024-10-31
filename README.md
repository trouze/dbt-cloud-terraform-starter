# dbt-cloud-terraform-starter
Everything to get a dbt Cloud customer going with Terraform to manage dbt Cloud resources.

To use, go ahead and copy this template repository to your organization and start up a codespace on this repo. Review the Dockerfile and devcontainer configuration if you wish, but this will set up a development environment that pulls down your current dbt Cloud resource configurations into a few files. From here, you can push these files to a feature branch and open your first pull request on this repository.

Upon merge, a deployment action will run that updates the infrastructure and stores the state in a Github artifact. 

Disclaimer: This template repo gives you some tools to manage Terraform state from entirely within Github, this likely isn't a best practice for your organization as you should probably use an external tool to do this like Terraform Cloud or an external storage bucket. In this implementation, we make use of Github Artifacts which are usually limited to 90 days of storage if they go untouched. To emulate state locking in other solutions, we prevent concurrent builds from ocurring via a configuration in the deployment action, but this probably isn't as full featured as another solution.