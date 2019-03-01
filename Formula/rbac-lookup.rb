class RbacLookup < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage ""
  url "https://github.com/reactiveops/rbac-lookup/releases/download/v0.3.0/rbac-lookup_0.3.0_Darwin_x86_64.tar.gz"
  version "0.3.0"
  sha256 "7a271bddae25bc178079815954e957c80c8d7d95a060b537128ebf800692492b"

  def install
    bin.install "rbac-lookup"
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
