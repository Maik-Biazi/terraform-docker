terraform {
    backend "s3" {
        bucket = "terraform-states-maik-biazi"
        key = "Homolog/terraform.tfstate"
        region = "us-east-1"
      
    }
}