remote_state {
  backend = "s3"

  config = {
    bucket       = "terraform-state-283678155577"
    key          = "${path_relative_to_include()}/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}