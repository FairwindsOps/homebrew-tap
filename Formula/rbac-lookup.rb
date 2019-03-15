class RbacLookup < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage ""
  url "https://github.com/reactiveops/rbac-lookup/releases/download/v0.3.1/rbac-lookup_0.3.1_Darwin_x86_64.tar.gz"
  version "0.3.1"
  sha256 "4b1a251c3cf449efb47b8087f67843d64af35c729782cca4b1876debf3495141"

  def install
    bin.install "rbac-lookup"
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
