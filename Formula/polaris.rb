class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/FairwindsOps/polaris/releases/download/0.5.2/polaris_0.5.2_Darwin_x86_64.tar.gz"
  version "0.5.2"
  sha256 "9e244fdc3a6cd46877f65054d7a78d4cf44e4341a00c370411c26e31b73253dd"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
