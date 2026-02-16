terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.32.1"
    }
  }
}

provider "aws"{
    # Config options
}

resource "aws_s3_bucket" "default" {
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.default.id
  key    = "myfile.txt"
  source = "myfile.txt"

  etag = filemd5("myfile.txt")
}
