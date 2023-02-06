terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08a20b0531a2b5046"
  instance_type = "t2.micro"
  key_name = "st9-aws-key"

  tags = {
    Name = var.instance_name
  }
}
