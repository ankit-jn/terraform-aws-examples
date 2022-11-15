variable "owner_vpc_id" {}
variable "peer_vpc_id" {}

variable "auto_accept_peering" {}

variable "allow_owner_vpc_dns_resolution" {}
variable "allow_peer_vpc_dns_resolution" {}

variable "generalize_routes_to_peer" {}
variable "peer_cidrs" {}
variable "specific_routes_to_peer" {}

variable "generalize_routes_to_owner" {}
variable "owner_cidrs" {}
variable "specific_routes_to_owner" {}

variable "tags" {}