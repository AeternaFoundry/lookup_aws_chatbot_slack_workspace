variable "chatbot_slack_workspace_lookup" {
  description = <<EOT
Map of chatbot_slack_workspace_lookup, attributes below
Required:
    - slack_team_name
Optional:
    - region
EOT

  type = map(object({
    slack_team_name = string
    region          = optional(string)
  }))
}

