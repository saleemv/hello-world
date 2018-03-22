# AWS Cloud
provider "aws" {
        region = "${var.region}"
        shared_credentials_file = "${var.creds}"
}

# To get the vpc_id of default vpc. This can be removed when we create custom vpc. 
data "aws_vpc" "default" {
  default = "true"
}

# All availability zones within the region
data "aws_availability_zones" "all" { }
