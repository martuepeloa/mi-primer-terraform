terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">3.0"
    }
  }


backend "s3" {
    bucket         = "mi-terraform-state-xxxx"
    key            = "proyecto/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    use_lockfile = true
    encrypt        = true
  }
}

provider "aws" {
    region = "us-east-1"
    access_key = var.access_key
    secret_key = var.secret_key
}

module "servidor" {
    source = "./modules/EC2"
    ami = "ami-011899242bb902164"
    instance_type = "t3.micro"
}