terraform {
  backend "s3" {
    bucket       = "terraformbackend-infra"
    key          = "dev/terraform.tfstate"
    region       = "eu-central-1"
    use_lockfile = true
  }
}