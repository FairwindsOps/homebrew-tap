# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  version "7.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/polaris/releases/download/7.4.1/polaris_darwin_amd64.tar.gz"
      sha256 "dbbb5e096e35ef818cedafdfead305c92964782c40baebbc1217f40c6973221a"

      def install
        bin.install "polaris"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/polaris/releases/download/7.4.1/polaris_darwin_arm64.tar.gz"
      sha256 "ff7ddac4d2888253cf0cb110d4060b8e47266616efc09181518f1f2f0094448f"

      def install
        bin.install "polaris"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/polaris/releases/download/7.4.1/polaris_linux_armv6.tar.gz"
      sha256 "386f0a45912b7eb08f875ce0d5d88bd062b2ef34f1fa598e67fb81fdec8ba8fd"

      def install
        bin.install "polaris"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/polaris/releases/download/7.4.1/polaris_linux_arm64.tar.gz"
      sha256 "8cff3e995d738fa769a3a81811082873a25c365d79e418f893c03cd05ec2a8ad"

      def install
        bin.install "polaris"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/polaris/releases/download/7.4.1/polaris_linux_amd64.tar.gz"
      sha256 "d3a7aceec3c91a9935b54cc1c9f1440090397822e99e43450b5d6777309d4c94"

      def install
        bin.install "polaris"
      end
    end
  end

  test do
    system "#{bin}/polaris version"
  end
end
