# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci 

output "vpc-id" {

    description = "Output VPC ID."
    value       = module.vpc-eks.vpc-id
}