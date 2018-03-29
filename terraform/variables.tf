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

variable "jdkrpm" {
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
  default = 1
}

variable "instanceType" {
  description = "EC2 instance type"
  default = "t2.micro"
}

variable "privKey" {
  description = "Location of private key to access aws instance"
}  
