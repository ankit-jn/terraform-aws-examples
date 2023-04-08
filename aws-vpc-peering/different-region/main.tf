module "peering" {
    source = "git::https://github.com/ankit-jn/terraform-aws-vpc-peering.git"
    
    providers = {
      aws.owner = aws.requester
      aws.peer = aws.accepter 
    }
    
    owner_vpc_id = var.owner_vpc_id
    peer_vpc_id = var.peer_vpc_id

    peer_vpc_region = var.peer_vpc_region
    auto_accept_peering = var.auto_accept_peering

    allow_owner_vpc_dns_resolution = var.allow_owner_vpc_dns_resolution
    allow_peer_vpc_dns_resolution = var.allow_peer_vpc_dns_resolution

    tags = var.tags
}