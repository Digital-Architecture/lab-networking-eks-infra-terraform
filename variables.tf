# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com


### Global Variables ###
variable region {
  type        = string
  default     = ""
  description = "AWS Region Account"
}


### VPC ###

variable "cidr_block" {

  description = "The CIDR Blocks the VPC."
  type        = string
  
}

### Tags ###

variable "tags" {}
variable "tags_vpc" {}