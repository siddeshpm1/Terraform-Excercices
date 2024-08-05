terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    github = {
      source = "integrations/github"
      version = "5.42.0"
    }
  }
}



# Configure the GitHub Provider
provider "github" {
  token = "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"
}

resource "github_repository" "example" {
  name        = "training"
  description = "My training codebase"
}
