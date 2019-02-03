//Global variables

variable "region" {
  description = "AWS region"
  default = "ap-south-1"
}

variable "aws_profile" {
  description = "AWS profile"
  default = "terraform"
}

variable "hosted_zone_id" {
  description = "Route53 zone id"
  default = "Jenkins-Commodities"
}

variable "bastion_key_name" {
  description = "Bastion KeyName"
  default = "terraform"
}

variable "availability_zones" {
  type        = "list"
  description = "List of Availability Zones"
  default = ['ap-south-1a', 'ap-south-1b']
}

// Default variables
variable "vpc_name" {
  description = "VPC name"
  default     = "terraformvpc"
}

variable "cidr_block" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "public_count" {
  default     = 2
  description = "Number of public subnets"
}


variable "private_count" {
  default     = 2
  description = "Number of private subnets"
}

variable "bastion_instance_type" {
  description = "Bastion Instance type"
  default     = "t2.micro"
}
