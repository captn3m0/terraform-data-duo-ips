# terraform-http-duo-whitelist ![](https://img.shields.io/badge/license-MIT-blue.svg)

This module provides an updated list of Duo's public CIDRs. These are maintained against the Duo Documentation: https://help.duo.com/s/article/1337.

*NOTE*: This module has been renamed to <https://registry.terraform.io/modules/captn3m0/duo-ips>. Please use that for future updates.

# Usage

```hcl
module "duo-whitelist" {
  source  = "captn3m0/duo-whitelist/http"
  version = "1.0.0"
}

resource "aws_security_group_rule" "allow_all_to_duo" {
  type            = "egress"
  from_port       = 0
  to_port         = 443
  protocol        = "tcp"
  cidr_blocks     = ["${module.duo-whitelist.cidr}"]
  security_group_id = "sg-123456"
}
```

# Outputs

The following outputs are exported:

## cidrs

Description: List of all Duo Service CIDRs. Whitelist for egress

## trusted\_endpoints\_cidrs

Description: Duo's Trusted Endpoint CIDRs. Whitelist for ingress


# LICENSE

Licensed under MIT. See [nemo.mit-license.org](https://nemo.mit-license.org/) for complete text.
