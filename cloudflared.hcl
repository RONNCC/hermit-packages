description = "Cloudflared is the command line client for Cloudflare Tunnel, a tunneling daemon that proxies traffic from the Cloudflare network to your origins."
binaries = ["cloudflared"]
test = "cloudflared --version"

linux {
  source = "https://github.com/cloudflare/cloudflared/releases/download/${version}/cloudflared-${os}-${arch}"

  on "unpack" {
    rename {
      from = "${root}/cloudflared-${os}-${arch}"
      to = "${root}/cloudflared"
    }
  }
}

darwin {
  source = "https://github.com/cloudflare/cloudflared/releases/download/${version}/cloudflared-${os}-amd64.tgz"
}

version "2022.2.0" "2022.2.1" "2022.2.2" "2022.3.0" "2022.3.1" "2022.3.2" {
  auto-version {
    github-release = "cloudflare/cloudflared"
  }
}
