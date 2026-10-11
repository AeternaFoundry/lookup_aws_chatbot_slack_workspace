data "aws_chatbot_slack_workspace" "chatbot_slack_workspace_lookup" {
  for_each = var.chatbot_slack_workspace_lookup

  slack_team_name = each.value.slack_team_name
  region          = each.value.region
}

