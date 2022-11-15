module "peering" {
    source = "git::https://github.com/arjstack/terraform-aws-vpc-peering.git?ref=v1.0.0"
    
    providers = {
        aws.owner = aws
        aws.peer = aws
    }

    owner_vpc_id = var.owner_vpc_id
    peer_vpc_id = var.peer_vpc_id

    auto_accept_peering = var.auto_accept_peering

    allow_owner_vpc_dns_resolution = var.allow_owner_vpc_dns_resolution
    allow_peer_vpc_dns_resolution = var.allow_peer_vpc_dns_resolution

    generalize_routes_to_peer = var.generalize_routes_to_peer 
    peer_cidrs = var.peer_cidrs
    specific_routes_to_peer = var.specific_routes_to_peer

    generalize_routes_to_owner = var.generalize_routes_to_owner
    owner_cidrs = var.owner_cidrs
    specific_routes_to_owner = var.specific_routes_to_owner
    
    tags = var.tags
}