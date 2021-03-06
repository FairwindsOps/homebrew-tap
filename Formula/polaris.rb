# This file was generated by GoReleaser. DO NOT EDIT.
class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  version "3.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/FairwindsOps/polaris/releases/download/3.2.0/polaris_3.2.0_darwin_amd64.tar.gz"
    sha256 "ef6d1e84a51be517f7c76b2f0da8be72ee8ada3477792d3b13fc1d197bf049e9"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/polaris/releases/download/3.2.0/polaris_3.2.0_linux_amd64.tar.gz"
      sha256 "e37368dec56a2f97e0de0e036d498a7f5508f15e153cd7f56fea997ebb56dae4"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FairwindsOps/polaris/releases/download/3.2.0/polaris_3.2.0_linux_arm64.tar.gz"
        sha256 "d2ecfdeb600e98b33a43c7d268eaa240b0d9b0b791e3aaf94a5c94a7da318525"
      else
        url "https://github.com/FairwindsOps/polaris/releases/download/3.2.0/polaris_3.2.0_linux_armv6.tar.gz"
        sha256 "3624849bca02cfbf43f3c181ada0702fda4102d86e4cd71d98d448191f8a84df"
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
