terraform {
  backend "s3" {
    bucket  = "dt-states"
    key  = "app/state"
    region = "us-east-2"
  }
}
