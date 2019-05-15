class Reckoner < Formula
  desc "Tool to simplify management and installation of multiple Helm chart releases."
  homepage "https://github.com/reactiveops/reckoner"
  url "https://github.com/reactiveops/reckoner/releases/download/v1.1.6/reckoner-darwin"
  version "1.1.6"
  sha256 "8651efdaf4ebd879e7ef647c6549c1f3bf908632ce0b26bb5ce3dd66e285b9ae"

  def install
    bin.install "reckoner"
  end

  test do
    system "#{bin}/reckoner"
  end
end
