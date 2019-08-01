class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/FairwindsOps/polaris/releases/download/0.4.0/polaris_0.4.0_Darwin_x86_64.tar.gz"
  version "0.4.0"
  sha256 "06c8ac7588dfa1fd00532d6d17e77021277cb9a96b258e522c22293117f995f4"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
