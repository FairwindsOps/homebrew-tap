class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/FairwindsOps/polaris/releases/download/0.6.0/polaris_0.6.0_Darwin_x86_64.tar.gz"
  version "0.6.0"
  sha256 "cd153b3d0eee70ebb73f898f6d39b1e3689669d2db4e1f79b705e1575c5ecf12"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
