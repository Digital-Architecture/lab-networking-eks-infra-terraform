# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com


### Global Variables ###
region = "us-west-1"

### AWS VPC ###
cidr_block = "10.170.192.0/18"

### AWS Subnets Private ###
subnet_private = {

    private_one = {
        az                  = "us-west-1a"
        subnet_id           = "10.170.216.0/21"
        name_subnet         = "subnet-private-lab-1"
        name_elastic_ip     = "eip-natgwt-lab-1"
        name_nat_gateway    = "natgwt-lab-1"
        name_route_table    = "rt-private-lab-1"
    },
    private_two = {
        az                  = "us-west-1c"
        subnet_id           = "10.170.232.0/21"
        name_subnet         = "subnet-private-lab-2"
        name_elastic_ip     = "eip-natgwt-lab-2"
        name_nat_gateway    = "natgwt-lab-2"
        name_route_table    = "rt-private-lab-2"
    }
}

### AWS Subnets Public ###
subnet_public = {
    public_one = {
        az                  = "us-west-1a"
        subnet_id           = "10.170.224.0/21"
        name_subnet         = "subnet-public-lab-1"
        name_route_table    = "rt-public-lab-1"
    },
    public_two = {
        az                  = "us-west-1c"
        subnet_id           = "10.170.240.0/21"
        name_subnet         = "subnet-public-lab-2"
        name_route_table    = "rt-public-lab-2"
    }
}

### Tags ###
tags = {
    Resource                        = "Networking "
    ResourceName                    = "lab-eks"
    Environment                     = "Lab" 
    Terraform                       = true
    Owner                           = "Digital Architecture"
    "kubernetes.io/cluster/lab-eks"	= "shared"
}

tags_vpc = {
    Name = "vpc-lab-eks"
}