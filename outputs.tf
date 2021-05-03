output "cidrs" {
  description = "List of all Duo Service CIDRs. Allow for egress to Duo"

  value = [
    "54.241.191.128/26",
    "54.236.251.192/26",
    "52.19.127.192/26",
    "52.32.63.128/26",
    "52.59.243.192/26",
    "35.182.14.128/26",
    "3.25.48.128/26"
  ]
}

output "trusted_endpoints_cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs. Allow for ingress from Duo"

  value = [
    "13.56.32.240/29",
    "52.32.63.176/30",
    "52.19.127.200/30",
    "52.59.243.200/30",
    "35.182.14.128/30",
    "3.24.48.188/30"
  ]
}

output "ad_hostnames_ca" {
  description = "Map of Duo's Microsoft Azure Active Directory Conditional Access application for Canada deployments"
  values      = ["cc1.azureauth.duosecurity.com"]
}

output "ad_hostnames_eu" {
  description = "Map of Duo's Microsoft Azure Active Directory Conditional Access application for Europe deployments"
  values = [
    "ec1.azureauth.duosecurity.com",
    "eu-west.azureauth.duosecurity.com"
  ]
}

output "ad_hostnames_us" {
  description = "Map of Duo's Microsoft Azure Active Directory Conditional Access application for US deployments"
  values      = ["us.azureauth.duosecurity.com"]
}

output "ad_hostnames_au" {
  description = "Map of Duo's Microsoft Azure Active Directory Conditional Access application for AU deployments"
  values      = ["ase2.azureauth.duosecurity.com"]
}
