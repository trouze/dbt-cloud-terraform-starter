Here’s how you can document the process of adding a new module to this Terraform setup, along with an example that extends the provided YAML file.

---

# Adding a New Module to the Terraform Setup

This guide explains how to add a new module to the Terraform setup for managing dbt Cloud resources. We'll walk through the steps to create a new module, integrate it into the root module, and extend the example YAML configuration.

You can watch a loom that walks through doing this live for overriding environment variables in jobs [here](https://www.loom.com/share/714a409b8b184ad0b92a685accc3cfbe?sid=37faab95-39f6-4285-a7a5-6bdca3c268fa).

---

## Steps to Add a New Module

1. **Create the Module Directory**:
   - Create a new directory under `modules/` for the new module.
   - Add a main.tf file to define the resources for the module.

2. **Define the Module's Resources**:
   - Use the `dbtcloud` provider to define the resources managed by the module.
   - Use variables to make the module reusable and configurable.

3. **Add Input Variables**:
   - Define input variables in a `variables.tf` file to accept data from the root module.

4. **Output Values**:
   - Define outputs in an `outputs.tf` file to expose resource attributes to the root module.

5. **Integrate the Module into the Root Module**:
   - Add a new `module` block in the root main.tf file.
   - Pass the required inputs to the module.

6. **Update the YAML Configuration**:
   - Extend the YAML configuration file to include data for the new module.
   - Ensure the root module processes the new data and passes it to the module.

---

## Example: Adding a "Notifications" Module

### 1. Create the Module Directory

Create a new directory: `modules/notifications/`.

Add a main.tf file to define the resource:

```hcl
terraform {
  required_providers {
    dbtcloud = {
      source = "dbt-labs/dbtcloud"
    }
  }
}

resource "dbtcloud_notification" "notifications" {
  for_each = {
    for notification in var.notifications : notification.name => notification
  }

  project_id = var.project_id
  name       = each.value.name
  type       = each.value.type
  config     = each.value.config
}
```

Add a `variables.tf` file:

```hcl
variable "project_id" {
  type = string
}

variable "notifications" {
  type = list(object({
    name   = string
    type   = string
    config = map(string)
  }))
}
```

Add an `outputs.tf` file:

```hcl
output "notification_ids" {
  value = {
    for key, notification in dbtcloud_notification.notifications : key => notification.id
  }
}
```

---

### 2. Integrate the Module into the Root Module

Add the module to the root main.tf file:

```hcl
module "notifications" {
  source = "../modules/notifications"

  project_id    = module.project.project_id
  notifications = lookup(local.project_config.project, "notifications", [])
}
```

---

### 3. Extend the YAML Configuration

Update the YAML file to include notifications:

```yaml
project:
  name: tyler tf test project
  notifications:
    - name: Slack Notification
      type: slack
      config:
        webhook_url: "https://hooks.slack.com/services/..."
    - name: Email Notification
      type: email
      config:
        recipients: "team@example.com"
```

---

### 4. Update Documentation

Add a new section to the documentation:

```markdown
## `modules/notifications/main.tf`
- **Resource**: `dbtcloud_notification`
    - Creates notifications for the dbt Cloud project.
    - Supports multiple notification types (e.g., Slack, email).
    - Configurations are passed dynamically using the `notifications` input variable.

### Example YAML Configuration
```yaml
notifications:
  - name: Slack Notification
    type: slack
    config:
      webhook_url: "https://hooks.slack.com/services/..."
  - name: Email Notification
    type: email
    config:
      recipients: "team@example.com"
```
```

---

This process ensures the new module is properly integrated into the Terraform setup and can be configured dynamically using the YAML file.