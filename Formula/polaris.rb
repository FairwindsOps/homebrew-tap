class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/reactiveops/polaris/releases/download/0.0.1/polaris_0.0.1_Darwin_x86_64.tar.gz"
  version "0.0.1"
  sha256 "b6210b1fb110a5cdebc83135bb520e13758cbccd3fedb81344840a9299353581"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
