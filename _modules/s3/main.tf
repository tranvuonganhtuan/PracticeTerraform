resource "aws_s3_bucket" "b" {
  bucket = "tuantran-bucket"
  #   acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
