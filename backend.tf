# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com

terraform {
  
  #backend "local" {}
  backend "s3" {
      bucket    = "terraform-labs-digital-architecture"
      key       = "terraform/lab-network-eks.tfstate"
      region    = "us-west-1"
  }
}