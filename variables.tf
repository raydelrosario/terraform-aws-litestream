variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "iam_user_name" {
  type        = string
  default     = "litestream"
  description = "Name of the IAM user"
}

variable "iam_policy_name" {
  type        = string
  default     = "litestream-access"
  description = "Name of the IAM policy"
}

variable "iam_policy_description" {
  type        = string
  default     = "The access policy for the Litestream S3 bucket"
  description = "Description of the IAM policy"
}

variable "iam_policy_path" {
  type    = string
  default = "/"
}