variable "bucket_name" {
  type = string
}

variable "iam_user_name" {
  type    = string
  default = "litestream"
}

variable "iam_policy_name" {
  type    = string
  default = "litestream-access"
}

variable "iam_policy_description" {
  type    = string
  default = "The access policy for the Litestream S3 bucket"
}