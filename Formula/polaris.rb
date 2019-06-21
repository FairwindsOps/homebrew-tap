class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/reactiveops/polaris/releases/download/0.2.1/polaris_0.2.1_Darwin_x86_64.tar.gz"
  version "0.2.1"
  sha256 "55e1712bfb7d47d4f8de49d94b0c93d1ca70216ea18de9b65b40372af943d2d4"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
