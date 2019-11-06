class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/FairwindsOps/polaris/releases/download/0.5.0/polaris_0.5.0_Darwin_x86_64.tar.gz"
  version "0.5.0"
  sha256 "0345b892c8afa29e4f76ba9e749bd3bf492b4eeafa9c6a8e8638430016408ef4"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
