terraform {
  backend "s3" {
    bucket = "pin2-practico2"
    key    = "terraform/terraform.tfstate" # Agregado el parámetro "key"
    region = "us-east-1"
  }
}

