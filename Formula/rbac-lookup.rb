class RbacLookup < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage ""
  url "https://github.com/reactiveops/rbac-lookup/releases/download/v0.1.0/rbac-lookup_0.1.0_Darwin_x86_64.tar.gz"
  version "0.1.0"
  sha256 "802c968124be1b9f7b4b691b608aeb66d4b60a79ca6668c04c850c1ad003c42c"

  def install
    bin.install "rbac-lookup"
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
