# Preamble


> 🗣 Audience: Anyone that works on a platform team implementing data mesh patterns

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


## Improvements coming
1. Automated way to pull down existing dbt Cloud resources into HCL using dbtcloud-terraforming
2. Use `hcl2json` to convert these blocks into json
3. Then convert json into yaml, align to schema.
4. Project -> [Repository, Environments -> [Credentials, Jobs], Environment Variables]

# dbt-cloud-projects
This repository contains Terraform modules for managing dbt Cloud projects and their resources. The structure is designed for flexibility and scalability, allowing users to define configurations using YAML files.

## Development Flow
To develop on this repository, `cd` into the `dbtcloud-kv271-70403103916054` folder and run `terraform init`. Ensure you have a `.tfvars` file or environment variables set that define:

```
dbt_account_id = 1234
dbt_token = "dbtc_z123"
dbt_host_url = "https://kv271.us1.dbt.com/api"
# optionally
databricks_tokens='{"token_some_name": "secure-token-123"}'
```

## Loading credentials into the env
Please use the following pattern to load dbx tokens into the environment so terraform can set them in dbt Cloud.
```
export TF_VAR_databricks_tokens='{
  "token_some_name": "secure-token-123",
  "token_other_name": "secure-token-456"
}'
```

## Using this module
This module is meant to be used for one project at a time, so as to not inadvertently impact multiple projects at once. We do this through specifying the `yaml_file` path for Terraform to load the configuration from.

```
terraform plan/apply \
-var "yaml_file=./deploy/terraform/dbtcloud-kv271-70403103916054/projects/demo_project/demo_project.yml" \
-var-file=".tfvars" \
-state="./deploy/terraform/dbtcloud-kv271-70403103916054/projects/demo_project/demo_project.tfstate" \
```

## Credential Rotation
You can use the same terraform module to *only* apply Databricks credentials:
```
terraform apply \
-var "yaml_file=./deploy/terraform/dbtcloud-kv271-70403103916054/projects/demo_project/demo_project.yml" \
-var-file=".tfvars" \
-state="./deploy/terraform/dbtcloud-kv271-70403103916054/projects/demo_project/demo_project.tfstate" \
-target=module.credentials
```

## YAML Spec
Below is the full YAML specification that defines the keys you can configure and the data type each value is expected to be:

```yaml
# yaml-language-server: $schema=https://raw.githubusercontent.com/trouze/dbt-cloud-terraform-starter/refs/heads/main/schemas/project/v1.json
project:
  name: <string> # Required. Name of the dbt project.
  repository:
    remote_url: <string> # Required. URL of the remote Git repository.
    gitlab_project_id: <number> # Optional. GitLab project ID if using GitLab integration.
  environments:
    - name: <string> # Required. Name of the environment.
      credential:
        token_name: <string> # Optional. Name of the token to use.
        schema: <string> # Optional. Schema to be used.
        catalog: <string> # Optional. Catalog to be used.
      connection_id: <number> # Required. Connection ID for the environment.
      type: <string> # Required. Type of environment. Allowed values: 'development', 'deployment'.
      dbt_version: <string> # Optional. dbt version to use. Defaults to "latest".
      enable_model_query_history: <boolean> # Optional. Enable model query history. Defaults to false.
      custom_branch: <string> # Optional. Custom branch for dbt. Defaults to null.
      deployment_type: <string> # Optional. Deployment type (e.g., 'production'). Defaults to null.
      jobs:
        - name: <string> # Required. Name of the job.
          execute_steps: 
            - <string> # Required. Steps to execute in the job.
          triggers:
            github_webhook: <boolean> # Required. Trigger job on GitHub webhook.
            git_provider_webhook: <boolean> # Required. Trigger job on Git provider webhook.
            schedule: <boolean> # Required. Trigger job on a schedule.
            on_merge: <boolean> # Required. Trigger job on merge.
          dbt_version: <string> # Optional. dbt version for the job. Defaults to "latest".
          deferring_environment: <string> # Optional. Enable deferral of job to environment. Defaults to no deferral.
          description: <string> # Optional. Description of the job. Defaults to null.
          errors_on_lint_failure: <boolean> # Optional. Fail job on lint errors. Defaults to true.
          generate_docs: <boolean> # Optional. Generate docs. Defaults to false.
          is_active: <boolean> # Optional. Whether the job is active. Defaults to true.
          num_threads: <number> # Optional. Number of threads for the job. Defaults to 4.
          run_compare_changes: <boolean> # Optional. Compare changes before running. Defaults to false.
          run_generate_sources: <boolean> # Optional. Generate sources before running. Defaults to false.
          run_lint: <boolean> # Optional. Run lint before running. Defaults to false.
          schedule_cron: <string> # Optional. Cron schedule for the job. Defaults to null.
          schedule_days: <array> of <ints> # Optional. Days for schedule. Defaults to null. e.g. [0, 1, 2]
          schedule_hours: <array> of <ints> # Optional. Hours for schedule. Defaults to null. e.g. [0, 1, 2]
          schedule_interval: <string> # Optional. Interval for schedule. Defaults to null.
          schedule_type: <string> # Optional. Type of schedule. Defaults to null.
          self_deferring: <boolean> # Optional. Whether the job is self-deferring. Defaults to false.
          target_name: <string> # Optional. Target name for the job. Defaults to null.
          timeout_seconds: <number> # Optional. Job timeout in seconds. Defaults to 0.
          triggers_on_draft_pr: <boolean> # Optional. Trigger job on draft PRs. Defaults to false.
          env_var_overrides:
            <ENV_VAR>: <string> # Optional. Specify a job env var override
  environment_variables:
    - name: DBT_<string> # Required. Name of the environment variable. Starts with DBT_
      environment_values:
        project: <string> # Optional. Value for the project scope.
        Development Environment: <string> # Optional. Value for the development environment.
        Production Environment: <string> # Optional. Value for the production environment.
    - name: DBT_ENV_SECRET_<string> # Required. Name of the environment variable. Starts with DBT_ENV_SECRET_
      environment_values:
        project: secret_<string> # Optional. Value for the project scope.
        Development Environment: secret_<string> # Optional. Value for the development environment.
        Production Environment: secret_<string> # Optional. Value for the production environment.
```

## Getting Secrets to deploy via Terraform
In order to deploy secrets you'll need to:
1. Add variable to Gitlab variables
2. Add the variable to the Terraform-ci.gitlab-ci.yml environment variables `TF_VAR_my_secret: $gitlab_variable_secret_name`
3. In credentials, make a reference to the variable using everything that comes after `TF_VAR_` -> 
```
credential:
  token_name: my_secret
```

4. In environment variables that you'd like to be secret, use the prefix `secret_` to reference the variable (loaded into the environment variables) and add everything that comes after `TF_VAR_` ->
```
environment_variables:
  - name: DBT_ENV_SECRET_VAR
    environment_values:
      project: secret_my_secret
```

## Importing existing Terraform resources into state & the YAML Spec
`dbtcloud-terraforming` supports a `generate` command that generates all resource blocks associated with a project. You can use this and copy into a `.tf` file that you can then run `terraform plan` & `terraform apply` which will bulk import these resources into the terraform state so they're under management.

```
dbtcloud-terraforming generate --resource-types <types> -p <project_int> --modern-import-block
```

While this package does support the ability to create import blocks and use `terraform apply` to bulk import existing resources to be under terraform state management, because we are storing configurations in YAML and loading it to terraform it is much more difficult to reverse engineer this. I suggest using the above command to pull down existing configurations and manually convert them to the YAML spec. This is a one time process, and once under terraform management you should not be continuously trying to import existing state.

## Getting started

To make it easy for you to get started with GitLab, here's a list of recommended next steps.

Already a pro? Just edit this README.md and make it your own. Want to make it easy? [Use the template at the bottom](#editing-this-readme)!

## Add your files

- [ ] [Create](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#create-a-file) or [upload](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#upload-a-file) files
- [ ] [Add files using the command line](https://docs.gitlab.com/ee/gitlab-basics/add-file.html#add-a-file-using-the-command-line) or push an existing Git repository with the following command:

```
cd existing_repo
git remote add origin https://gitlab.toolchain.corning.com/kairos/cloudenvironment/awsterraform/common-platform-services/dbt-cloud-projects.git
git branch -M main
git push -uf origin main
```

## Integrate with your tools

- [ ] [Set up project integrations](https://gitlab.toolchain.corning.com/kairos/cloudenvironment/awsterraform/common-platform-services/dbt-cloud-projects/-/settings/integrations)

## Collaborate with your team

- [ ] [Invite team members and collaborators](https://docs.gitlab.com/ee/user/project/members/)
- [ ] [Create a new merge request](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)
- [ ] [Automatically close issues from merge requests](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#closing-issues-automatically)
- [ ] [Enable merge request approvals](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/)
- [ ] [Set auto-merge](https://docs.gitlab.com/ee/user/project/merge_requests/merge_when_pipeline_succeeds.html)

## Test and Deploy

Use the built-in continuous integration in GitLab.

- [ ] [Get started with GitLab CI/CD](https://docs.gitlab.com/ee/ci/quick_start/index.html)
- [ ] [Analyze your code for known vulnerabilities with Static Application Security Testing (SAST)](https://docs.gitlab.com/ee/user/application_security/sast/)
- [ ] [Deploy to Kubernetes, Amazon EC2, or Amazon ECS using Auto Deploy](https://docs.gitlab.com/ee/topics/autodevops/requirements.html)
- [ ] [Use pull-based deployments for improved Kubernetes management](https://docs.gitlab.com/ee/user/clusters/agent/)
- [ ] [Set up protected environments](https://docs.gitlab.com/ee/ci/environments/protected_environments.html)

***

# Editing this README

When you're ready to make this README your own, just edit this file and use the handy template below (or feel free to structure it however you want - this is just a starting point!). Thanks to [makeareadme.com](https://www.makeareadme.com/) for this template.

## Suggestions for a good README

Every project is different, so consider which of these sections apply to yours. The sections used in the template are suggestions for most open source projects. Also keep in mind that while a README can be too long and detailed, too long is better than too short. If you think your README is too long, consider utilizing another form of documentation rather than cutting out information.

## Name
Choose a self-explaining name for your project.

## Description
Let people know what your project can do specifically. Provide context and add a link to any reference visitors might be unfamiliar with. A list of Features or a Background subsection can also be added here. If there are alternatives to your project, this is a good place to list differentiating factors.

## Badges
On some READMEs, you may see small images that convey metadata, such as whether or not all the tests are passing for the project. You can use Shields to add some to your README. Many services also have instructions for adding a badge.

## Visuals
Depending on what you are making, it can be a good idea to include screenshots or even a video (you'll frequently see GIFs rather than actual videos). Tools like ttygif can help, but check out Asciinema for a more sophisticated method.

## Installation
Within a particular ecosystem, there may be a common way of installing things, such as using Yarn, NuGet, or Homebrew. However, consider the possibility that whoever is reading your README is a novice and would like more guidance. Listing specific steps helps remove ambiguity and gets people to using your project as quickly as possible. If it only runs in a specific context like a particular programming language version or operating system or has dependencies that have to be installed manually, also add a Requirements subsection.

## Usage
Use examples liberally, and show the expected output if you can. It's helpful to have inline the smallest example of usage that you can demonstrate, while providing links to more sophisticated examples if they are too long to reasonably include in the README.

## Support
Tell people where they can go to for help. It can be any combination of an issue tracker, a chat room, an email address, etc.

## Roadmap
If you have ideas for releases in the future, it is a good idea to list them in the README.

## Contributing
State if you are open to contributions and what your requirements are for accepting them.

For people who want to make changes to your project, it's helpful to have some documentation on how to get started. Perhaps there is a script that they should run or some environment variables that they need to set. Make these steps explicit. These instructions could also be useful to your future self.

You can also document commands to lint the code or run tests. These steps help to ensure high code quality and reduce the likelihood that the changes inadvertently break something. Having instructions for running tests is especially helpful if it requires external setup, such as starting a Selenium server for testing in a browser.

## Authors and acknowledgment
Show your appreciation to those who have contributed to the project.

## License
For open source projects, say how it is licensed.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.
