output "chatbot_slack_workspace_lookup_region" {
  description = "Map of region values across all chatbot_slack_workspace_lookup, keyed the same as var.chatbot_slack_workspace_lookup"
  value       = { for k, v in data.aws_chatbot_slack_workspace.chatbot_slack_workspace_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "chatbot_slack_workspace_lookup_slack_team_id" {
  description = "Map of slack_team_id values across all chatbot_slack_workspace_lookup, keyed the same as var.chatbot_slack_workspace_lookup"
  value       = { for k, v in data.aws_chatbot_slack_workspace.chatbot_slack_workspace_lookup : k => v.slack_team_id if v.slack_team_id != null && length(v.slack_team_id) > 0 }
}
output "chatbot_slack_workspace_lookup_slack_team_name" {
  description = "Map of slack_team_name values across all chatbot_slack_workspace_lookup, keyed the same as var.chatbot_slack_workspace_lookup"
  value       = { for k, v in data.aws_chatbot_slack_workspace.chatbot_slack_workspace_lookup : k => v.slack_team_name if v.slack_team_name != null && length(v.slack_team_name) > 0 }
}

