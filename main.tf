data "external" "cloudflare_range" {
    program = ["python3", "${path.module}/scripts/cloudflare_ips.py"]
}

output "cloudflare_range" {
    value = tolist(split(",", data.external.cloudflare_range.result["ipv4_cidrs"]))
}