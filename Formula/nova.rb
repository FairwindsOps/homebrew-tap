# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nova < Formula
  desc "Check installed Helm charts for updates"
  homepage ""
  version "2.3.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/FairwindsOps/nova/releases/download/2.3.1/nova_2.3.1_darwin_amd64.tar.gz"
    sha256 "078f3834d29a2c57c2c54d1802e78845a7b0157d1aa506e8bd323ece930dccf2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/FairwindsOps/nova/releases/download/2.3.1/nova_2.3.1_linux_amd64.tar.gz"
    sha256 "81174d5a85db1c3471cc60733bf337fd9a414f5b2a665cf2d2734897418fc7f2"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/FairwindsOps/nova/releases/download/2.3.1/nova_2.3.1_linux_armv6.tar.gz"
    sha256 "c191c91cbce0357dbaafd6a5af3d6ca1d57e3727c7efd0983d0c4363b6d662b0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/FairwindsOps/nova/releases/download/2.3.1/nova_2.3.1_linux_arm64.tar.gz"
    sha256 "0644e722b795b6e8c45d4df54183a3bbf00b29b7a280fc119c69f97b94397af1"
  end

  def install
    bin.install "nova"
  end

  test do
    system "#{bin}/nova version"
  end
end
