terraform {
  backend "s3" {
    encrypt = "true"
    bucket  = "terraform-state-nexus-user-conference"
    region  = "ap-south-1"
    key     = "vpc/terraform.tfstate"
  }
}

provider "aws" {
  region                  = "${var.region}"
  profile                 = "${var.aws_profile}"
}
# shared_credentials_file = "${var.shared_credentials_file}"
