# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com


### Global Variables ###
region = "us-west-1"

### AWS VPC ###
cidr_block = "10.170.192.0/18"


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