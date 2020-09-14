terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
        bucket = "tf-bucket-2020"
        key = "terraform/tfstate.tfstate"
    }
}

output "s3_bucket_name" {
  value = "tf-bucket-2020"
}
