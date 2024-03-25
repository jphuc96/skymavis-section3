
resource "github_team" "skymavis_team" {
  name        = var.name
  description = "Team for ${var.name}"
  privacy     = "closed"
}

resource "github_team_membership" "skymavis_team_membership_members" {
  for_each = var.memberships

  team_id = github_team.skymavis_team.id

  username = each.key
  role     = each.value
}
