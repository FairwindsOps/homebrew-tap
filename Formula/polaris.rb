class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/FairwindsOps/polaris/releases/download/0.3.0/polaris_0.3.0_Darwin_x86_64.tar.gz"
  version "0.3.0"
  sha256 "77ae6c55ccff137d6fcbb8e3e54c27b85f73d2f57788ed5cbc80f6a334b9ac0d"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
