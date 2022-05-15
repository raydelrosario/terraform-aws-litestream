output "bucket_name" {
  value = aws_s3_bucket.main.id
}

output "iam_user_access_key_id" {
  value     = aws_iam_access_key.main.id
  sensitive = true
}

output "iam_user_secret_access_key" {
  value     = aws_iam_access_key.main.secret
  sensitive = true
}