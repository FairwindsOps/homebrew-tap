class RbacLookup < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage ""
  url "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.4.2/rbac-lookup_0.4.2_Darwin_x86_64.tar.gz"
  version "0.4.2"
  sha256 "5e90223e9a786d30fb7fb70f967233cfa08f5a212b95a5528a4774e0094bddbd"

  def install
    bin.install "rbac-lookup"
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
