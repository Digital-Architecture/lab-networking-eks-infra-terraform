# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com


### Global Variables ###
region = "us-east-1"

### AWS VPC ###
cidr_blocks = "10.170.192.0/18"


### Tags ###
tags = {
    Project         = "EKS Networking "
    Stack           = "Labs"
    Environment     = "Lab" 
    Terraform       = true
    Department      = "Digital Architecture"
}

tags_vpc = {
    Name = "vpc-eks"
}