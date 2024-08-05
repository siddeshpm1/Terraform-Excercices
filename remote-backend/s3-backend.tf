terraform {
  backend "s3" {
    bucket = "remote-state-file-tf-bucket"
    key    = "s3remotestate.tf.state"
    region = "us-east-1"
    access_key = ""
    secret_key = ""
    dynamodb_table = "s3-dynamodb-lock"
  }
}
