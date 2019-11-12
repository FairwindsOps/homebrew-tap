class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/FairwindsOps/polaris/releases/download/0.5.1/polaris_0.5.1_Darwin_x86_64.tar.gz"
  version "0.5.1"
  sha256 "e960438844cec453fdfd26c8fed8826ec640066a2c8eaf963fd1f9f862fab405"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
