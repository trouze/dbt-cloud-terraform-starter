resource "dbtcloud_job" "jobs" {
  for_each = var.jobs

  name                     = each.value.name
  environment_id           = each.value.environment_id
  deferring_environment_id = lookup(each.value, "deferring_environment_id", null)
  execute_steps            = each.value.execute_steps
  generate_docs            = each.value.generate_docs
  num_threads              = each.value.num_threads
  project_id               = each.value.project_id
  run_compare_changes      = each.value.run_compare_changes
  run_generate_sources     = each.value.run_generate_sources
  schedule_cron            = each.value.schedule_cron
  schedule_type            = each.value.schedule_type
  target_name              = each.value.target_name
  timeout_seconds          = each.value.timeout_seconds
  triggers                 = each.value.triggers
  triggers_on_draft_pr     = each.value.triggers_on_draft_pr
}
