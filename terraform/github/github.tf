terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "github_pat_token"
}

resource "github_repository" "example" {
  name        = "terraform"
  description = "tools"
  visibility = "public"
}
