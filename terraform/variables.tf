variable "region" {
  default = "ap-south-1"
  description = "AWS region code"
}

variable "vpc_name"   {
  description = "Name for your vpc"
}

variable "vpc_cidr"  {
  description = "CIDR block for vpc subnet"
}

variable "az" {
  description = "Availability Zone"
}

variable "jdk" {
  description = "Location of java 8 jdk"
}

variable "git" {
  description = "Location of dockerfile and other files from git"
}

variable "creds" {
  description = "Location of the AWS key and secret"
}

variable "amiId" {
  description = "id of ami"
}

variable "count" {
  description = "Number of instances"
}
