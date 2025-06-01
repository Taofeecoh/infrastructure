resource "github_repository" "infra_engineering" {
  name        = "infrastructure"
  description = "terraform managed"

  visibility = "public"
  has_issues = true
}