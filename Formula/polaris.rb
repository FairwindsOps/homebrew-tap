class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/reactiveops/polaris/releases/download/0.1.5/polaris_0.1.5_Darwin_x86_64.tar.gz"
  version "0.1.5"
  sha256 "7120b078c2a8669e9a7d7286548b05c46e2e139bd21c08e8a6b5164781aaea8c"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
