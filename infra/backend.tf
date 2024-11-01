terraform {
  backend "s3" {
    bucket         = "aca-terraform-states-02"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
    key            = "projects/aca-terraform-states.tfstate"
    region         = "us-east-1"
  }
}
