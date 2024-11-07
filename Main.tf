provider "aws" {

  region = "us-east-2" # Ohio region

}

resource "aws_s3_bucket" "bucket_one" {

  bucket = “bucket_one”