# Documentation for Terraform Modules

## Root Module (`main.tf`)
This is the root module that orchestrates the creation and configuration of various dbt Cloud resources using submodules. It defines the following:

- **Providers**: Configures the `dbtcloud` provider with account details and token.
- **Modules**:
    - `project`: Creates a dbt Cloud project.
    - `repository`: Configures a repository for the project using a specific provider alias.
    - `project_repository`: Links the repository to the project.
    - `credentials`: Sets up credentials for environments in the project.
    - `environments`: Creates environments for the project and associates them with credentials.
    - `jobs`: Configures jobs for the project, linked to specific environments.
    - `environment_variables`: Defines environment variables for the project and associates them with environments.
    - `environment_variable_job_overrides`: Overrides environment variables for specific jobs.

---

## `modules/project/main.tf`
- **Resource**: `dbtcloud_project`
    - Creates a dbt Cloud project with a name derived from the `target_name` and `project_name` variables.

---

## `modules/repository/gitlab_main.tf`
- **Resource**: `dbtcloud_repository`
    - Configures a GitLab repository for the dbt Cloud project.
    - Supports optional fields like `gitlab_project_id` and `git_clone_strategy`.

---

## `modules/project_repository/main.tf`
- **Resource**: `dbtcloud_project_repository`
    - Links a repository to a dbt Cloud project using `project_id` and `repository_id`.

---

## `modules/credentials/main.tf`
- **Resource**: `dbtcloud_databricks_credential`
    - Creates Databricks credentials for environments in the project.
    - Uses a map of tokens (`token_map`) to securely retrieve tokens for each environment.

---

## `modules/environments/main.tf`
- **Resource**: `dbtcloud_environment`
    - Creates environments for the dbt Cloud project.
    - Supports optional fields like `dbt_version`, `custom_branch`, and `deployment_type`.
    - Associates environments with credentials using a map of `credential_ids`.

---

## `modules/jobs/main.tf`
- **Resource**: `dbtcloud_job`
    - Configures jobs for the dbt Cloud project.
    - Jobs are dynamically created based on the `environments_data` input.
    - Supports optional fields like `dbt_version`, `schedule_cron`, and `timeout_seconds`.

---

## `modules/environment_variables/main.tf`
- **Resource**: `dbtcloud_environment_variable`
    - Defines environment variables for the dbt Cloud project.
    - Supports secure token substitution for values prefixed with `secret_`.

---

## `modules/environment_variable_job_overrides/main.tf`
- **Resource**: `dbtcloud_environment_variable_job_override`
    - Overrides environment variables for specific jobs in the project.
    - Dynamically creates overrides based on the `environments_data` input.

---

## Key Features
- **Dynamic Resource Creation**: Many modules use `for_each` to dynamically create resources based on input data.
- **Secure Token Management**: Sensitive values like tokens are securely managed using a `token_map`.
- **Modular Design**: Each module is responsible for a specific aspect of the dbt Cloud configuration, promoting reusability and maintainability.

