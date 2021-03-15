terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.7"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

module "webserver" {
    source = "../../"

    servername = var.servername
    size = "t3.micro"
  
}