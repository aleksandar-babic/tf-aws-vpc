# TF AWS VPC module

Simple Terraform module that deploys VPC and secures S3 using VPC Endpoint.


## Usage
Inlcude module in your TF HCL files.

```hcl-terraform
module "vpc" {
  source = "github.com/aleksandar-babic/tf-aws-vpc"

  name                       = "MySuperAwesomeVPC"
  env                        = "prod"
  region                     = "eu-west-1"
  cidr_block                 = "10.0.0.0/16"
  private_subnet_cidr_blocks = ["10.0.1.0/24", "10.0.3.0/24"]
  public_subnet_cidr_blocks  = ["10.0.0.0/24", "10.0.2.0/24"]
  availability_zones         = ["eu-west-1a", "eu-west-1b"]
  enable_s3_vpc_endpoint     = true
}
```

### Outputs

* `vpc_id` - ID of the VPC
* `public_subnet_ids` - list of public subnet IDs
* `private_subnet_ids` - list of private subnet IDs
* `nat_gateway_ips` - list of EIPs attached to NAT Gateways