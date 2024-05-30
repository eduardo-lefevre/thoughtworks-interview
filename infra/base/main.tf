# Setup our aws provider
variable "region" {
  type    = string
  default = "eu-west-1"
}

provider "aws" {
  version = "4.26.0"
  region = "${var.region}"
}

terraform {
  backend "s3" {
    region         = "${var.region}"
    bucket         = "${var.prefix}-terraform-infra"
    key            = "base/terraform.tfstate"
    dynamodb_table = "${var.prefix}-terraform-locks"
  }
}
