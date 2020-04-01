# amzn2-wireguard

[Packer](https://www.packer.io/) Template for building an Amazon Linux 2 AMI with [WireGuard](https://www.wireguard.com/)


## How to Build?

This template was written using HCL2 which only supported in Packer `v1.5.0+`. As a result, you will need a recent version for Packer and run:
```bash
packer build .

# To override variables
packer build -var-file="overrides.pkrvars.hcl" .
```

Alternatively, you can run it using [`hashicrop/packer`](https://hub.docker.com/r/hashicorp/packer/) docker image:
```bash
  docker run --rm -v ${PWD}:/packer -w /packer hashicorp/packer build .
```
