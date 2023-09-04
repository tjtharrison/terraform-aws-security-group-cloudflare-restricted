resource "aws_security_group" "allow_tls" {
  name        = "allow-tls-cloudflare"
  description = "Allow TLS inbound traffic"

  ingress {
    description = "TLS from Cloudflare IPs"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = module.cloudflare_ips.cloudflare_range
  }
}

module "cloudflare_ips" {
    source = "../"
}