provider "aws" {
  region = "us-east-2" # Ohio region
}
resource "aws_s3_bucket" "bucketnoahtest" {
  bucket = "bucketnoahtest"
}
terraform {
    backend "s3" {
    # Replace this with your bucket name!
    bucket         = "bucketnoahtest"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-2"
  }
}
resource "aws_instance" "test6" {
  ami           = "ami-09caa684bdee947fc" # Replace with the desired Amazon Linux 2 AMI for eu-west-2 (bitnami image)
  instance_type = "t2.micro"  # Change to the desired instance type
  tags = {
    Name = "sundayexample_instance2" 
}
}
