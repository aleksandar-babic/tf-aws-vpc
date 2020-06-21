variable "name" {
  default     = "CustomVPC"
  type        = string
  description = "Name of the VPC"
}

variable "env" {
  type        = string
  description = "Name of environment this VPC is deployed in"
}

variable "region" {
  default     = "eu-west-1"
  type        = string
  description = "Region of the VPC"
}

variable "cidr_block" {
  default     = "10.0.0.0/16"
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr_blocks" {
  default     = ["10.0.0.0/24", "10.0.2.0/24"]
  type        = list(string)
  description = "List of public subnet CIDR blocks"
}

variable "private_subnet_cidr_blocks" {
  default     = ["10.0.1.0/24", "10.0.3.0/24"]
  type        = list(string)
  description = "List of private subnet CIDR blocks"
}

variable "availability_zones" {
  default     = ["eu-west-1a", "eu-west-1b"]
  type        = list(string)
  description = "List of availability zones"
}

variable "enable_s3_vpc_endpoint" {
  type        = bool
  description = "Flag that controls creation of the S3 VPC Endpoint."
  default     = true
}

variable "tags" {
  default     = {}
  type        = map(string)
  description = "Extra tags to attach to the VPC resources"
}