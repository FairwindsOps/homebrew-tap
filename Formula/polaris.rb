class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/reactiveops/polaris/releases/download/0.1.4/polaris_0.1.4_Darwin_x86_64.tar.gz"
  version "0.1.4"
  sha256 "b1289032eaa1538bebce1bca1c258f75adeb5fffb22d99c809f22e52a31a79bf"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
