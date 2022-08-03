resource "aws_s3_bucket" "photo" {
  count  = var.create_bucket ? 1 : 0
  bucket = var.test_id != "" ? "${var.test_id}.${var.bucket_name}" : "${var.bucket_name}"
}
