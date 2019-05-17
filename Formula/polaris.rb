class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  url "https://github.com/reactiveops/polaris/releases/download/0.1.3/polaris_0.1.3_Darwin_x86_64.tar.gz"
  version "0.1.3"
  sha256 "4fe9458fe4dbfdddb66240161bbcda0a075bbb9aab1273938adf5888fa28a290"

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris --version"
  end
end
