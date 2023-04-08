module "peering" {
    source = "git::https://github.com/ankit-jn/terraform-aws-vpc-peering.git"

    providers = {
        aws.owner = aws
        aws.peer = aws
    }

    vpc_peering_connection_handler = var.vpc_peering_connection_handler
    
    owner_vpc_id = var.owner_vpc_id
    peer_vpc_id = var.peer_vpc_id

    tags = var.tags
}