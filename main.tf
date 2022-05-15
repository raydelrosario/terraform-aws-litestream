resource "aws_s3_bucket" "main" {
  bucket = var.litestream_bucket_name

}

resource "aws_s3_bucket_acl" "main" {
  bucket = aws_s3_bucket.main.id
  acl    = "private"
}

resource "aws_iam_policy" "main" {
  name        = "litestream-access"
  path        = "/"
  description = "Access Policy for ${var.litestream_bucket_name}"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:GetBucketLocation",
          "s3:ListBucket"
        ],
        "Resource" : [aws_s3_bucket.main.arn]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:PutObject",
          "s3:DeleteObject",
          "s3:GetObject"
        ],
        "Resource" : [aws_s3_bucket.main.arn, "${aws_s3_bucket.main.arn}/*"]
      }
    ]
  })
}

resource "aws_iam_user" "main" {
  name = var.litestream_iam_user_name
}

resource "aws_iam_access_key" "main" {
  user = aws_iam_user.main.name
}

resource "aws_iam_user_policy_attachment" "main" {
  user       = aws_iam_user.main.name
  policy_arn = aws_iam_policy.main.arn
}