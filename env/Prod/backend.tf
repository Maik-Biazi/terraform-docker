terraform {
    backend "s3" {
        bucket = "terraform-states-maik-biazi"
        key = "Prod/terraform.tfstate"
        region = "us-east-1"
      
    }
}