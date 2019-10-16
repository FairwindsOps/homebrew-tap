class RbacLookup < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage ""
  url "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.5.0/rbac-lookup_0.5.0_Darwin_x86_64.tar.gz"
  version "0.5.0"
  sha256 "6314e2e429911ad22d72d788086e2c92f83654277830f3be944c8c5437debf24"

  def install
    bin.install "rbac-lookup"
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
