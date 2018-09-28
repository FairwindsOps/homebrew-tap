class RbacLookup < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage ""
  url "https://github.com/reactiveops/rbac-lookup/releases/download/v0.2.0/rbac-lookup_0.2.0_Darwin_x86_64.tar.gz"
  version "0.2.0"
  sha256 "ccf00b676d1cae3f11fe628c8b07bfc63878864a2e8e3c249b62e1984e15873b"

  def install
    bin.install "rbac-lookup"
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
