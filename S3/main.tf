terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" 
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "terrateam-bucket01" {
  type    = string
  default = "terrateam-dev-bucket-trial22"

}

resource "aws_s3_bucket" "terrateam-bucket081" {
  bucket = var.terrateam-bucket01
}
