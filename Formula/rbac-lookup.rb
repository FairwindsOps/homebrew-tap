class RbacLookup < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage ""
  url "https://github.com/reactiveops/rbac-lookup/releases/download/v0.2.1/rbac-lookup_0.2.1_Darwin_x86_64.tar.gz"
  version "0.2.1"
  sha256 "d0e7fa8839d1e29e8cf51a9494b029fcbebfbd23c78a7bb7b2804de1b35759db"

  def install
    bin.install "rbac-lookup"
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
