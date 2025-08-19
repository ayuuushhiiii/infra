terraform {
  backend "s3" {
    bucket="backenddbuckettt"
    region = "us-east-1"
    dynamodb_table = "tf-state-lock"
    key = "project_2/terraform.state"
    encrypt        = true
  }
}
