class RbacLookup < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage ""
  url "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.6.0/rbac-lookup_0.6.0_Darwin_x86_64.tar.gz"
  version "0.6.0"
  sha256 "6c3a5b804001bbf329c90ed5043d0ffcaa4198bec37d75be2ccd8120120aa2eb"

  def install
    bin.install "rbac-lookup"
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
