output "cidrs" {
  description = "List of all Duo Service CIDRs. Whitelist for egress"

  value = [
    "54.241.191.128/26",
    "54.236.251.192/26",
    "52.19.127.192/26",
    "52.32.63.128/26",
    "52.59.243.192/26",
    "35.182.14.128/26",
  ]
}

output "trusted_endpoints_cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs. Whitelist for ingress"

  value = [
    "13.56.32.240/29",
    "52.32.63.176/30",
    "52.19.127.200/30",
    "52.59.243.200/30",
    "35.182.14.128/30",
  ]
}
