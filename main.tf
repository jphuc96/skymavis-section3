terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {}

# Create a GitHub Team
module "team" {
  source = "./modules/team"

  for_each = var.team_configurations

  name        = each.key
  memberships = each.value
}
