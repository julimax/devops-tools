terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "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"
}

resource "github_repository" "example" {
  name        = "terraform"
  description = "tools"
  visibility = "public"
}