class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/reactiveops/polaris/releases/download/0.1.2/polaris_0.1.2_Darwin_x86_64.tar.gz"
  version "0.1.2"
  sha256 "e18606ae3f787fbad295fda23fe8281c74dab89a50eb14751804a193c5b23e01"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
