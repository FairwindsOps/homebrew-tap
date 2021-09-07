# This file was generated by GoReleaser. DO NOT EDIT.
class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  version "4.0.9"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/FairwindsOps/polaris/releases/download/4.0.9/polaris_darwin_amd64.tar.gz"
    sha256 "a39da7848c034c05bf21fc2fdc3b7e3cc37b0ce45a8ae85911f0c0c4c39a3fec"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/polaris/releases/download/4.0.9/polaris_linux_amd64.tar.gz"
      sha256 "eb5932c9b59643604c2a872d298cd106b58cc19494627f55a8897e0c1a1a5e72"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FairwindsOps/polaris/releases/download/4.0.9/polaris_linux_arm64.tar.gz"
        sha256 "e585d77ac0a126649d61066221427bde5031b4ca2aecfbd112b7496f9b48bf76"
      else
        url "https://github.com/FairwindsOps/polaris/releases/download/4.0.9/polaris_linux_armv6.tar.gz"
        sha256 "eb8d794643fa859f3cf1bce38d7d0e38976a5815523749298b29f58a195308b8"
      end
    end
  end

  def install
    bin.install "polaris"
  end

  test do
    system "#{bin}/polaris version"
  end
end
