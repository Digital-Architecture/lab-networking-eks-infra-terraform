# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com

output "vpc-id" {

    description = "Output VPC ID."
    value       = module.vpc-eks.vpc-id
}