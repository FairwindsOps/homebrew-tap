class RbacLookup < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage ""
  url "https://github.com/reactiveops/rbac-lookup/releases/download/v0.3.2/rbac-lookup_0.3.2_Darwin_x86_64.tar.gz"
  version "0.3.2"
  sha256 "b860f062f6558456ab9603a25b05ec7b3ac73a3820af9d5e8340db2853ab9d09"

  def install
    bin.install "rbac-lookup"
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
