class RbacLookup < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage ""
  url "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.6.2/rbac-lookup_0.6.2_Darwin_x86_64.tar.gz"
  version "0.6.2"
  sha256 "162b2ae171ed9a20c68cffb610750dd230964df9571296257950f812ce7ff035"

  def install
    bin.install "rbac-lookup"
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
