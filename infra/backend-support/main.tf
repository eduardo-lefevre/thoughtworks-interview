# Setup our aws provider
variable "region" {
  type    = string
  default = "eu-west-1"
}

provider "aws" {
  version = "4.26.0"
  region  = "${var.region}"
}
