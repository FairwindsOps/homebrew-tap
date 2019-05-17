class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/reactiveops/polaris/releases/download/0.1.1/polaris_0.1.1_Darwin_x86_64.tar.gz"
  version "0.1.1"
  sha256 "3c45482d195a0633cfa01712b438f1c925812403d16a1ad1429c967a94975700"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
