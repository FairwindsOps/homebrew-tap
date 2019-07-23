class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/FairwindsOps/polaris/releases/download/0.3.1/polaris_0.3.1_Darwin_x86_64.tar.gz"
  version "0.3.1"
  sha256 "76dcbdfd9d0eb2b1af7714ef49d586d3b7bc211102845bdbf9032a87fa22306a"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
