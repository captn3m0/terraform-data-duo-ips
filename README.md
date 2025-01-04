# terraform-data-duo-ips ![License:MIT](https://img.shields.io/badge/license-MIT-blue.svg) ![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/captn3m0/terraform-data-duo-ips?sort=semver) ![GitHub last commit](https://img.shields.io/github/last-commit/captn3m0/terraform-data-duo-ips)

This module provides an updated list of Duo's public CIDRs. These are maintained against the Duo Documentation: https://help.duo.com/s/article/1337.

Supported on both Terraform and OpenTofu.

# Usage

```hcl
// Import the module
module "duo-ips" {
  source  = "captn3m0/duo-ips/data"
  version = "1.3.0"
}

// Allow traffic for MFA APIs for all region CIDRs
// Also open traffic from these to your LDAP Server port 636 if you're using LDAP
resource "aws_security_group_rule" "allow_all_to_duo" {
  type              = "egress"
  from_port         = 0
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["${module.duo-ips.cidrs}"]
  security_group_id = "sg-123456"
}

// Limit MFA traffic to specific regions
resource "aws_security_group_rule" "allow_all_to_duo_uk" {
  type              = "egress"
  from_port         = 0
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["${module.duo-ips.uk-cidrs}"]
  security_group_id = "sg-123456"
}

// Limit MFA traffic as per your DUO Deployment ID
resource "aws_security_group_rule" "allow_all_to_duo_auth" {
  type              = "egress"
  from_port         = 0
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = module.duo-ips.auth_cidr_by_deployment["DUO48"]
  security_group_id = "sg-123456"
}

// trusted endpoint requests are made from these ranges
// depending on what port your origin is using, pick the correct port here as well.
resource "aws_security_group_rule" "allow_all_from_duo_in_ingress" {
  type              = "ingress"
  from_port         = 0
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["${module.duo-ips.trusted-endpoint-india-cidrs}"]
  security_group_id = "sg-123456"
}
```

## Outputs

| Name | Description |
|------|-------------|
| ad\_hostnames\_asean | Map of Duo's Microsoft Azure Active Directory Conditional Access application for ASEAN deployments |
| ad\_hostnames\_au | Map of Duo's Microsoft Azure Active Directory Conditional Access application for AU deployments |
| ad\_hostnames\_ca | Map of Duo's Microsoft Azure Active Directory Conditional Access application for Canada deployments |
| ad\_hostnames\_eu | Map of Duo's Microsoft Azure Active Directory Conditional Access application for Europe deployments |
| ad\_hostnames\_in | Map of Duo's Microsoft Azure Active Directory Conditional Access application for IN deployments |
| ad\_hostnames\_jp | Map of Duo's Microsoft Azure Active Directory Conditional Access application for Japan deployments |
| ad\_hostnames\_uk | Map of Duo's Microsoft Azure Active Directory Conditional Access application for UK deployments |
| ad\_hostnames\_us | Map of Duo's Microsoft Azure Active Directory Conditional Access application for US deployments |
| australia-cidrs | List of Duo's Service CIDRs for australia deployments |
| canada-cidrs | List of Duo's Service CIDRs for canada deployments |
| central-europe-cidrs | List of Duo's Service CIDRs for central-europe deployments |
| cidrs | List of all Duo Service CIDRs. Allow for egress to Duo |
| emea-cidrs | List of Duo's Service CIDRs for EMEA deployments |
| india-cidrs | List of Duo's Service CIDRs for india deployments |
| japan-cidrs | List of Duo's Service CIDRs for japan deployments |
| southeast-asia-cidrs | List of Duo's Service CIDRs for southeast-asia deployments |
| trusted-endpoint-australia-cidrs | List of Duo's Trusted Endpoint CIDRs for Australia Deployments |
| trusted-endpoint-canada-cidrs | List of Duo's Trusted Endpoint CIDRs for Canda Deployments |
| trusted-endpoint-central-europe-cidrs | List of Duo's Trusted Endpoint CIDRs for Central Europe Deployments |
| trusted-endpoint-emea-cidrs | List of Duo's Trusted Endpoint CIDRs for EMEA Deployments |
| trusted-endpoint-india-cidrs | List of Duo's Trusted Endpoint CIDRs for India Deployments |
| trusted-endpoint-japan-cidrs | List of Duo's Trusted Endpoint CIDRs for Japan Deployments |
| trusted-endpoint-southeast-asia-cidrs | List of Duo's Trusted Endpoint CIDRs for Southeast Asia Deployments |
| trusted-endpoint-uk-cidrs | List of Duo's Trusted Endpoint CIDRs for UK Deployments |
| trusted-endpoint-us-cidrs | List of Duo's Trusted Endpoint CIDRs for US Deployments |
| trusted\_endpoints\_cidrs | List of Duo's Trusted Endpoint CIDRs. Allow for ingress from Duo |
| uk-cidrs | List of Duo's Service CIDRs for UK deployments |
| us-cidrs | List of Duo's Service CIDRs for US deployments |

## Changelog

### 1.3.0
- Added new outputs for various regions
- New regions added: UK/India

### 1.2.0
- Added new CIDRs

### 1.1.0

- Removed `http://` from hostname values.

### 1.0.3

- Changed the terraform registry module name from [`duo-whitelist`](https://registry.terraform.io/modules/captn3m0/duo-whitelist) to [`duo-ips`](https://registry.terraform.io/modules/captn3m0/duo-ips).
- Renamed `duo_ad_hostnames_us` to `ad_hostnames_us`

# LICENSE

Licensed under MIT. See [nemo.mit-license.org](https://nemo.mit-license.org/) for complete text.
