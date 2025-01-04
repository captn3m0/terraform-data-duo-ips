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

output "auth_cidr_by_deployment" {

  description = "Map of Duo's Service CIDRs by deployment. Lookup by Deployment ID (DUOXX) for a list of CIDRs to allow for egress for authentication"
  value = {
    DUO1  = local.us-cidrs
    DUO2  = local.us-cidrs
    DUO4  = local.us-cidrs
    DUO5  = local.us-cidrs
    DUO6  = local.us-cidrs
    DUO7  = local.us-cidrs
    DUO9  = local.us-cidrs
    DUO10 = local.us-cidrs
    DUO13 = local.us-cidrs
    DUO14 = local.us-cidrs
    DUO15 = local.us-cidrs
    DUO16 = local.us-cidrs
    DUO17 = local.us-cidrs
    DUO18 = local.us-cidrs
    DUO19 = local.us-cidrs
    DUO20 = local.us-cidrs
    DUO21 = local.us-cidrs
    DUO22 = local.us-cidrs
    DUO23 = local.us-cidrs
    DUO24 = local.us-cidrs
    DUO28 = local.us-cidrs
    DUO31 = local.us-cidrs
    DUO32 = local.us-cidrs
    DUO33 = local.us-cidrs
    DUO35 = local.us-cidrs
    DUO36 = local.us-cidrs
    DUO37 = local.us-cidrs
    DUO39 = local.us-cidrs
    DUO40 = local.us-cidrs
    DUO41 = local.us-cidrs
    DUO42 = local.us-cidrs
    DUO44 = local.us-cidrs
    DUO45 = local.us-cidrs
    DUO49 = local.us-cidrs
    DUO50 = local.us-cidrs
    DUO52 = local.us-cidrs
    DUO55 = local.us-cidrs
    DUO56 = local.us-cidrs
    DUO58 = local.us-cidrs
    DUO60 = local.us-cidrs
    DUO62 = local.us-cidrs
    DUO63 = local.us-cidrs
    DUO64 = local.us-cidrs
    DUO65 = local.us-cidrs
    DUO71 = local.us-cidrs
    DUO72 = local.us-cidrs
    DUO73 = local.us-cidrs
    DUO74 = local.us-cidrs
    DUO75 = local.us-cidrs
    DUO76 = local.us-cidrs
    DUO77 = local.us-cidrs
    DUO78 = local.us-cidrs
    DUO79 = local.us-cidrs
    DUO80 = local.us-cidrs

    DUO3  = local.emea-cidrs
    DUO47 = local.emea-cidrs
    DUO57 = local.emea-cidrs

    DUO38 = local.central-europe-cidrs
    DUO48 = local.central-europe-cidrs

    DUO53 = local.canada-cidrs

    DUO66 = local.australia-cidrs

    DUO67 = local.japan-cidrs

    DUO68 = local.southeast-asia-cidrs

    DUO69 = local.india-cidrs

    DUO70 = local.uk-cidrs

    DUO81 = local.uae-cidrs

  }

}

output "us-cidrs" {
  description = "List of Duo's Service CIDRs for US deployments"
  value       = local.us-cidrs
}

# Maintained for backward compatibility
output "emea-cidrs" {
  description = "List of Duo's Service CIDRs for EMEA deployments. Same as eu-cidrs"
  value       = local.emea-cidrs
}

# This was renamed from EMEA CIDRs
output "eu-cidrs" {
  description = "List of Duo's Service CIDRs for EMEA deployments. Same as emea-cidrs"
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

output "uae-cidrs" {
  description = "List of Duo's Service CIDRs for UAE deployments"
  value       = local.uae-cidrs
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
  value       = local.trusted-endpoint-emea-cidrs
}
output "trusted-endpoint-central-europe-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for Central Europe Deployments"
  value       = local.trusted-endpoint-central-europe-cidrs
}
output "trusted-endpoint-canada-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for Canda Deployments"
  value       = local.trusted-endpoint-canada-cidrs
}
output "trusted-endpoint-australia-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for Australia Deployments"
  value       = local.trusted-endpoint-australia-cidrs
}
output "trusted-endpoint-japan-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for Japan Deployments"
  value       = local.trusted-endpoint-japan-cidrs
}
output "trusted-endpoint-southeast-asia-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for Southeast Asia Deployments"
  value       = local.trusted-endpoint-southeast-asia-cidrs
}
output "trusted-endpoint-india-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for India Deployments"
  value       = local.trusted-endpoint-india-cidrs
}
output "trusted-endpoint-uk-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for UK Deployments"
  value       = local.trusted-endpoint-uk-cidrs
}

output "trusted-endpoint-uae-cidrs" {
  description = "List of Duo's Trusted Endpoint CIDRs for UAE Deployments"
  value       = local.trusted-endpoint-uae-cidrs
}

output "ad_hostnames_ca" {
  description = "List of Duo's Microsoft Entra ID Conditional Access hostnames (formerly Azure Conditional Access) for Canada deployments"
  value       = ["cc1.azureauth.duosecurity.com"]
}

output "ad_hostnames_eu" {
  description = "List of Duo's Microsoft Entra ID Conditional Access hostnames (formerly Azure Conditional Access) for EU deployments"
  value = [
    "ec1.azureauth.duosecurity.com",
    "eu-west.azureauth.duosecurity.com"
  ]
}

output "ad_hostnames_us" {
  description = "List of Duo's Microsoft Entra ID Conditional Access hostnames (formerly Azure Conditional Access) for US deployments"
  value       = ["us.azureauth.duosecurity.com"]
}

output "ad_hostnames_au" {
  description = "List of Duo's Microsoft Entra ID Conditional Access hostnames (formerly Azure Conditional Access) for Australia deployments"
  value       = ["ase2.azureauth.duosecurity.com"]
}

output "ad_hostnames_asean" {
  description = "List of Duo's Microsoft Entra ID Conditional Access hostnames (formerly Azure Conditional Access) for ASEAN deployments"
  value       = ["ase1.azureauth.duosecurity.com"]
}

output "ad_hostnames_jp" {
  description = "List of Duo's Microsoft Entra ID Conditional Access hostnames (formerly Azure Conditional Access) for Japan deployments"
  value       = ["ane1.azureauth.duosecurity.com"]
}

output "ad_hostnames_uk" {
  description = "List of Duo's Microsoft Entra ID Conditional Access hostnames (formerly Azure Conditional Access) for UK deployments"
  value       = ["ew2.azureauth.duosecurity.com"]
}

output "ad_hostnames_in" {
  description = "List of Duo's Microsoft Entra ID Conditional Access hostnames (formerly Azure Conditional Access) for IND deployments"
  value       = ["as1.azureauth.duosecurity.com"]
}
