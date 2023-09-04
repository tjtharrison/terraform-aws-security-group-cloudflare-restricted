# terraform-aws-security-group-cloudflare-restricted

Terraform module for outputting a list of public IP addresses from Cloudflare to be used in a security group to 
restrict ingress traffic.

This repository was written for [an article I wrote on Medium](https://medium.com/@tjtharrison/restricting-security-group-to-cloudflare-via-terraform-b9f3416710de).

## Usage

Example usage of the module can be found in the [example](./example) directory.

```
terraform init
terraform plan
```