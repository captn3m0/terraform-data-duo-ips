output "cidrs" {
  description = "List of all Duo Service CIDRs. Allow for egress to Duo"

  value = concat(
    local.us-cidrs,
    local.emea-cidrs,
    local.central-europe-cidrs,
    local.canada-cidrs,
    local.australia-cidrs,
    local.japan-cidrs,
    local.southeast-asia-cidrs,
    local.india-cidrs,
    local.uk-cidrs,
  )
}

output "us-cidrs" {
  description = "List of Duo's Service CIDRs for US deployments"
  value       = local.us-cidrs
}
output "emea-cidrs" {
  description = "List of Duo's Service CIDRs for EMEA deployments"
  value       = local.emea-cidrs
}
output "central-europe-cidrs" {
  description = "List of Duo's Service CIDRs for central-europe deployments"
  value       = local.central-europe-cidrs
}
output "canada-cidrs" {
  description = "List of Duo's Service CIDRs for canada deployments"
  value       = local.canada-cidrs
}
output "australia-cidrs" {
  description = "List of Duo's Service CIDRs for australia deployments"
  value       = local.australia-cidrs
}
output "japan-cidrs" {
  description = "List of Duo's Service CIDRs for japan deployments"
  value       = local.japan-cidrs
}
output "southeast-asia-cidrs" {
  description = "List of Duo's Service CIDRs for southeast-asia deployments"
  value       = local.southeast-asia-cidrs
}
output "india-cidrs" {
  description = "List of Duo's Service CIDRs for india deployments"
  value       = local.india-cidrs
}
output "uk-cidrs" {
  description = "List of Duo's Service CIDRs for UK deployments"
  value       = local.uk-cidrs
}

output "trusted_endpoints_cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs. Allow for ingress from Duo"

  value = concat(
    local.trusted-endpoint-us-cidrs,
    local.trusted-endpoint-emea-cidrs,
    local.trusted-endpoint-central-europe-cidrs,
    local.trusted-endpoint-canada-cidrs,
    local.trusted-endpoint-australia-cidrs,
    local.trusted-endpoint-japan-cidrs,
    local.trusted-endpoint-southeast-asia-cidrs,
    local.trusted-endpoint-india-cidrs,
    local.trusted-endpoint-uk-cidrs,
  )
}

output "trusted-endpoint-us-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for US Deployments"
  value       = local.trusted-endpoint-us-cidrs
}
output "trusted-endpoint-emea-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for EMEA Deployments"
  value       = local.a-trusted-endpoint-emea-cidrs
}
output "trusted-endpoint-central-europe-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for Central Europe Deployments"
  value       = local.ope-trusted-endpoint-central-europe-cidrs
}
output "trusted-endpoint-canada-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for Canda Deployments"
  value       = local.ada-trusted-endpoint-canada-cidrs
}
output "trusted-endpoint-australia-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for Australia Deployments"
  value       = local.tralia-trusted-endpoint-australia-cidrs
}
output "trusted-endpoint-japan-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for Japan Deployments"
  value       = local.an-trusted-endpoint-japan-cidrs
}
output "trusted-endpoint-southeast-asia-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for Southeast Asia Deployments"
  value       = local.a-trusted-endpoint-southeast-asia-cidrs
}
output "trusted-endpoint-india-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for India Deployments"
  value       = local.ia-trusted-endpoint-india-cidrs
}
output "trusted-endpoint-uk-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for UK Deployments"
  value       = local.trusted-endpoint-uk-cidrs
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

output "ad_hostnames_asean" {
  description = "Map of Duo's Microsoft Azure Active Directory Conditional Access application for ASEAN deployments"
  values      = ["ase1.azureauth.duosecurity.com"]
}

output "ad_hostnames_jp" {
  description = "Map of Duo's Microsoft Azure Active Directory Conditional Access application for Japan deployments"
  values      = ["ane1.azureauth.duosecurity.com"]
}

output "ad_hostnames_uk" {
  description = "Map of Duo's Microsoft Azure Active Directory Conditional Access application for UK deployments"
  values      = ["ew2.azureauth.duosecurity.com"]
}

output "ad_hostnames_in" {
  description = "Map of Duo's Microsoft Azure Active Directory Conditional Access application for IN deployments"
  values      = ["as1.azureauth.duosecurity.com"]
}
