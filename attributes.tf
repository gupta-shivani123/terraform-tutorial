provider "aws" {
  region     = "us-west-2"
  
}

resource "aws_eip" "lb" {
  vpc      = true
}

output "eip" {
  value = aws_eip.lb
}

resource "aws_s3_bucket" "mys3" {
  bucket = "shivi-attribute-demo-001"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3
}
