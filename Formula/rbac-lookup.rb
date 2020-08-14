class RbacLookup < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage ""
  url "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.6.1/rbac-lookup_0.6.1_Darwin_x86_64.tar.gz"
  version "0.6.1"
  sha256 "a37c59b073efa677a2eb4da1338cc0d9cf3fa28bc1b224e0a9186d6ef568d252"

  def install
    bin.install "rbac-lookup"
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
