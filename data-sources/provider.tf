terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

#AKIAZNTN7B46JC5AQP75
#GTh20P/D9Zn6UhKMkI5C39tHUFqr7ya0MP4ru2+I