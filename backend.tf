# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "kach07-terraform-remote-state" # already create in the console
    key            = "terraform-module/rentzone/terraform.tfstate"
    region         = "eu-west-2"
    profile        = "Mr.Kachy"
    dynamodb_table = "terraform-state-lock"
  }
}