# Day 36 and 37

module "vpc" {
  source      = "git::https://github.com/Varunappalla93/Terrform-AWS-VPC.git?ref=main" # wil take from git repo
  project     = var.project
  environment = var.env

  vpc_cidr = "10.0.0.0/16"

  public_subnet_cidrs   = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs  = ["10.0.11.0/24", "10.0.12.0/24"]
  database_subnet_cidrs = ["10.0.21.0/24", "10.0.22.0/24"]


  is_peering_required = true

}

# terraform init
# terraform plan
# terraform apply -auto-approve

# to check for new module updates - > terraform get -update and again run terraform plan and terraform apply -auto-approve