terraform {
  required_providers {
     aws = {
         source = "hashicorp/aws"
         cersion = "~>4.0"
   }
 }


backend "s3" {
  bucket = "terraform-state-sanojtech"
  key = "dev/terraform.tfstate"
  region = "ap-south-a"
 # For State Locking
  dynamodb_table = "terraform-state-table"
  profile = "terraformprofile"
 }
}


# Configure the AWS Provider

provider "aws" {
region = "ap-south-1"
profile = "terraformprofile"
