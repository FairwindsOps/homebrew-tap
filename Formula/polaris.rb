class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/reactiveops/polaris/releases/download/0.1.0/polaris_0.1.0_Darwin_x86_64.tar.gz"
  version "0.1.0"
  sha256 "6c7c3db75c12f788fa6f853c4aa353248f495e56df201c85cc814ca3e284a2b5"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
