terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.6"
    }
  }
}

provider "github" {
  token = var.GITHUB_TOKEN
}


provider "google" {
  project = var.project_id
  region  = "us-central1"
}


