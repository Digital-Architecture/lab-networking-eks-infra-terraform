# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci


### AWS VPC ###
module "vpc-eks" {

    source                          = "git::https://github.com/Digital-Architecture/terraform-modules-aws-networking.git//vpc"

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

### AWS Internet Gateway ###
module "internet-gateway" {

    source                  = "git::https://github.com/Digital-Architecture/terraform-modules-aws-networking.git//internet_gateway"

    vpc_id                  = module.vpc-eks.vpc-id
    name_internet_gateway   = "igwt-eks-lab"
    tags                    = var.tags
}

### AWS Subnet Private, Subnet Public, AWS NAT Gateway and AWS Route Table ###
module "subnet_private" {

    source                  = "git::https://github.com/Digital-Architecture/terraform-modules-aws-networking.git//subnet_private"

    vpc_id                  = module.vpc-eks.vpc-id
    subnet_private          = var.subnet_private
    map_public_ip_on_launch = false
    tags                    = var.tags
}


module "subnet_public" {

    source                  = "git::https://github.com/Digital-Architecture/terraform-modules-aws-networking.git//subnet_public"

    vpc_id                  = module.vpc-eks.vpc-id
    subnet_public           = var.subnet_public
    map_public_ip_on_launch = false
    tags                    = var.tags
}

### AWS Routes ###
module "route-public" {

    source = "git::https://github.com/Digital-Architecture/terraform-modules-aws-networking.git//route/internet_gateway"

    route_internet_gateway = var.route_internet_gateway
}


module "route-private" {

    source = "git::https://github.com/Digital-Architecture/terraform-modules-aws-networking.git//route/nat_gateway"

    route_nat_gateway = var.route_nat_gateway
}


