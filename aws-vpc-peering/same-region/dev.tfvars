owner_vpc_id = "owner-vpc-id"
peer_vpc_id = "peer-vpc-id"

auto_accept_peering = true

allow_owner_vpc_dns_resolution = true
allow_peer_vpc_dns_resolution = true

generalize_routes_to_peer = true
peer_cidrs = ["10.0.1.0/28", "10.0.2.0/28"]
specific_routes_to_peer = [
    {
        route_table_id = "owner_rt_id"
        cidrs = "10.0.3.0/28,10.0.4.0/28"
    }
]

generalize_routes_to_owner = true
owner_cidrs = ["172.31.1.0/28", "172.31.2.0/28"]
specific_routes_to_owner = [
    {
        route_table_id = "peer_rt_id"
        cidrs = "172.31.3.0/28,172.31.4.0/28"
    }
]

tags = {
    "CostCenter" = "1234"
}