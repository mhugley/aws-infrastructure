
include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../../modules/vpc"
}

inputs = {
  vpc_cidr = "10.0.0.0/16"
  vpc_name = "personal-dev-vpc"
}
