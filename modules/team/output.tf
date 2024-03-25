output "team_id" {
  value = github_team.skymavis_team.id
}

output "members" {
  value = {
    for username, role in var.memberships : username => role
  }
}
