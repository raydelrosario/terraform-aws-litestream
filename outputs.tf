output "bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.main.id
}

output "iam_user_access_key_id" {
  description = "Access Key ID for access to the S3 bucket"
  value       = aws_iam_access_key.main.id
  sensitive   = true
}

output "iam_user_secret_access_key" {
  description = "Secret Access Key for access to the S3 bucket"
  value     = aws_iam_access_key.main.secret
  sensitive = true
}