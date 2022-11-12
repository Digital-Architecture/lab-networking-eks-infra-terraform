# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com


### VPC ###
module "vpc-eks" {

    source                          = "git::https://github.com/Digital-Architecture/terraform-modules-aws-networking.git//vpc?ref=v.0.0.5"

    cidr_block                      = var.cidr_block
    instance_tenancy                = "default"
    enable_dns_hostnames            = true
    enable_dns_support              = true
    enable_classiclink              = false
    enable_classiclink_dns_support  = false
    enable_ipv6                     = false 
    tags                            = var.tags
    tags_vpc                        = var.tags_vpc
}