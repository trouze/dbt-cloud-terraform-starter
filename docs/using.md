Here’s a step-by-step guide to document how to deploy a new set of resources via Terraform, considering the GitLab pipeline process with both the **merge request pipeline** and the **deployment pipeline**.

---

# Deploying a New Set of Resources via Terraform

This guide explains how to deploy a new set of resources using Terraform in the GitLab CI/CD pipeline. The process involves updating the Terraform configuration, creating a merge request, and using the GitLab pipelines to validate and deploy the changes.

---

## Steps to Deploy New Resources

### 1. **Update the Terraform Configuration**

**Add or Update the YAML Configuration**:
   - Extend the YAML file for the project (e.g., `projects/demo_project/demo_project.yml`) to include the configuration for the new resources.

### Update the YAML Configuration

Extend the YAML file to include the new resource:

```yaml
project:
  name: tyler tf test project
  repository:
    remote_url: "git@github.com:trouze/adi-domain-jaffle.git"
    gitlab_project_id: 267820
  environments:
    - name: Production Environment
      credential:
        token_name: test_token
        schema: public
      connection_id: 207456
      deployment_type: production
      type: deployment
      dbt_version: latest
      enable_model_query_history: false
      custom_branch: main
      jobs:
        - name: Daily Job
          execute_steps:
            - dbt run
```

### Update the Root Module

If you're creating a net new project, add the project to the `.gitlab-ci.yml` project matrix list so it'll begin tracking changes:

```yaml
.matrix-dbt-projects:
  parallel:
    matrix:
      - PROJECT_NAME: finance-training-sandbox
      - PROJECT_NAME: it-edp
      - PROJECT_NAME: scm-inventory-insights
      - PROJECT_NAME: it-shared-datasets
      - PROJECT_NAME: <add_new_project>
```

---

### 2. **Create a Merge Request**

1. **Push Changes to a Feature Branch**:
   - Create a new branch for your changes.
   - Commit and push the updated Terraform configuration and YAML file.

2. **Open a Merge Request**:
   - Create a merge request targeting the `main` branch (or the appropriate default branch).
   - Add a description of the changes and link any related issues.

---

### 3. **Run the Merge Request Pipeline**

1. **Pipeline Execution**:
   - The merge request pipeline will automatically run when the merge request is created.
   - This pipeline includes the following stages:
     - **Prepare**: Ensures the feature branch is up-to-date with the target branch to prevent state drift.
     - **Plan**: Generates a Terraform plan to show the changes that will be applied.

2. **Review the Terraform Plan**:
   - Check the pipeline artifacts for the Terraform plan (`.tfplan` file).
   - Ensure the plan matches the expected changes.

3. **Resolve Issues**:
   - If there are issues with the plan, update the Terraform configuration and push the changes to the feature branch.

---

### 4. **Merge the Changes**

1. **Approval**:
   - Once the pipeline passes and the plan is reviewed, request approval for the merge request.

2. **Merge**:
   - Merge the feature branch into the target branch (e.g., `main`).

---

### 5. **Run the Deployment Pipeline**

1. **Trigger the Deployment Pipeline**:
   - The deployment pipeline will automatically run after the merge request is merged into the target branch.

2. **Pipeline Stages**:
   - **Apply (Production)**: Deploys the changes to the production environment (manual trigger).

3. **Validate the Deployment**:
   - Review the deployment logs and validate the resources in the target environment.

---
