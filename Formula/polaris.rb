class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/reactiveops/polaris/releases/download/0.0.1/polaris_0.0.1_Darwin_x86_64.tar.gz"
  version "0.0.1"
  sha256 "ffc3cdd7e139fc4be17761b90e739ef20063f923b41fdf6c32faf889af585fda"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
