class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/reactiveops/polaris/releases/download/0.2.0/polaris_0.2.0_Darwin_x86_64.tar.gz"
  version "0.2.0"
  sha256 "5669116b5609e577273e9bbb79133d4c18408dd12b76e278516ea2042e7dca3e"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
