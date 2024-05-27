resource "aws_s3_bucket" "aion-s3-module" {
  bucket = "aionthosbucko"

}

resource "aws_s3_bucket_object" "object1" {
  bucket       = aws_s3_bucket.aion-s3-module.id
  for_each     = fileset("myapp", "**/*.*")
  key          = each.value
  source       = "myapp/${each.value}"
  content_type = each.value



}

resource "aws_s3_bucket_public_access_block" "app" {
  bucket = aws_s3_bucket.aion-s3-module.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
