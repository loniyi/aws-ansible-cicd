##----------storage/main.tf-------

# Create a random id 

resource "random_id" "ss_bucket_id" {
  byte_length = 2
}

# Create the bucket

resource "aws_s3_bucket" "ss_code" {
  bucket        = "${var.s3_projectname}-${random_id.ss_bucket_id.dec}"
  acl           = "private"
  force_destroy = true

  tags {
    Name = "ss_bucket"
  }
}



# ---------------------------------------
# S3 Access Profile
# ---------------------------------------

resource "aws_iam_instance_profile" "s3_accessprofile" {
  name = "s3_accessprofile"
  role = "${aws_iam_role.s3_accessrole.name}"
}

# ---------------------------------------
# S3 Access Policy
# ---------------------------------------
resource "aws_iam_role_policy" "s3_accesspolicy" {
  name = "s3_accesspolicy"
  role = "${aws_iam_role.s3_accessrole.id}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "*"
    }
  ]
}
EOF
}

# ---------------------------------------
# S3 Access Role
# ---------------------------------------
resource "aws_iam_role" "s3_accessrole" {
  name = "s3_accessrole"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
  {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
  },
      "Effect": "Allow",
      "Sid": ""
      }
    ]
}
EOF
}

