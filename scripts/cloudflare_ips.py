""" Function to pull the current ipv4 cidrs from Cloudflare for SG terraform module"""

import json
import requests

cloudflare_requests = requests.get(
    "https://api.cloudflare.com/client/v4/ips", timeout=5
)

cloudflare_cidrs = json.loads(cloudflare_requests.text)["result"]["ipv4_cidrs"]

IPV4_CIDRS = ""

for cidr in cloudflare_cidrs:
    IPV4_CIDRS += cidr + ","
IPV4_CIDRS = IPV4_CIDRS[:-1]
cloudflare_cidrs = {"ipv4_cidrs": IPV4_CIDRS}

print(json.dumps(cloudflare_cidrs))
