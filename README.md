# terraform-data-duo-ips ![License:MIT](https://img.shields.io/badge/license-MIT-blue.svg) ![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/captn3m0/terraform-data-duo-ips?sort=semver) ![GitHub last commit](https://img.shields.io/github/last-commit/captn3m0/terraform-data-duo-ips)

This module provides an updated list of Duo's public CIDRs. These are maintained against the Duo Documentation: https://help.duo.com/s/article/1337

# Usage

```hcl
module "duo-ips" {
  source  = "captn3m0/duo-ips/data"
  version = "1.2.0"
}

resource "aws_security_group_rule" "allow_all_to_duo" {
  type            = "egress"
  from_port       = 0
  to_port         = 443
  protocol        = "tcp"
  cidr_blocks     = ["${module.duo-ips.cidr}"]
  security_group_id = "sg-123456"
}
```

## Changelog

### 1.2.0
- Added new CIDRs

### 1.1.0

- Removed `http://` from hostname values.

### 1.0.3

- Changed the terraform registry module name from [`duo-whitelist`](https://registry.terraform.io/modules/captn3m0/duo-whitelist) to [`duo-ips`](https://registry.terraform.io/modules/captn3m0/duo-ips).
- Renamed `duo_ad_hostnames_us` to `ad_hostnames_us`

## Outputs

The following outputs are exported:

### ad\_hostnames\_ca

Description: Map of Duo's Microsoft Azure Active Directory Conditional Access application for Canada deployments

### ad\_hostnames\_eu

Description: Map of Duo's Microsoft Azure Active Directory Conditional Access application for Europe deployments

### cidrs

Description: List of all Duo Service CIDRs. Allow for egress to Duo

### ad\_hostnames\_us

Description: Map of Duo's Microsoft Azure Active Directory Conditional Access application for US deployments

### trusted\_endpoints\_cidrs

Description: List of Duo's Trusted Endpoint CIDRs. Allow for ingress from Duo

# LICENSE

Licensed under MIT. See [nemo.mit-license.org](https://nemo.mit-license.org/) for complete text.
