# Day 36 and 37

module "vpc" {
  source      = "git::https://github.com/Varunappalla93/Terrform-AWS-VPC.git?ref=main" # wil take from git repo
  project     = var.project
  environment = var.env
}



# terraform init
# terraform plan
# terraform apply -auto-approve

# to check for new module updates - > terraform get -update and again run terraform plan and terraform apply -auto-approve