class RbacLookup < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage ""
  url "https://github.com/reactiveops/rbac-lookup/releases/download/v0.1.1/rbac-lookup_0.1.1_Darwin_x86_64.tar.gz"
  version "0.1.1"
  sha256 "55c35c76c45ff0028af103dbcc26e7104e22077bac42e140ad61da9b03bee770"

  def install
    bin.install "rbac-lookup"
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
