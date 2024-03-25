variable "name" {
  type        = string
  description = "The name of the team"
}

variable "memberships" {
  type        = map(string)
  description = "map of user and role"
}
