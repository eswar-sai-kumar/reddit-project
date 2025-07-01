terraform {
  backend "s3" {
    bucket         = "tetris-bucket"
    region         = "us-east-1"
    key            = "s3bucket-project-devops"
    use_lockfile = true
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
