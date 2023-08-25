# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  version "8.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/polaris/releases/download/8.5.0/polaris_darwin_arm64.tar.gz"
      sha256 "4e57f3d4379a58a65f1d14a6a491671eb3f9f8e013f1307b93d1912923fefa15"

      def install
        bin.install "polaris"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/polaris/releases/download/8.5.0/polaris_darwin_amd64.tar.gz"
      sha256 "c89543b3bff53d405e84185f51ab3c2df5c65ae2e331cbcde5996a2664925cd1"

      def install
        bin.install "polaris"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/polaris/releases/download/8.5.0/polaris_linux_amd64.tar.gz"
      sha256 "480e6d687c3864afa7cd28d5138f76a8c95dd0678601a9ffaa3b0e5a5e381d1b"

      def install
        bin.install "polaris"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/polaris/releases/download/8.5.0/polaris_linux_arm64.tar.gz"
      sha256 "3863551a7a527fcfd6f1f4c3c12ddd6a3a31cc322ca9a624729b9dd544c4dd92"

      def install
        bin.install "polaris"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/polaris/releases/download/8.5.0/polaris_linux_armv6.tar.gz"
      sha256 "747334d352ae5afddcb44a0c3f8af5f4d0fddac82e734f49f91654a7d9e7b8cc"

      def install
        bin.install "polaris"
      end
    end
  end

  test do
    system "#{bin}/polaris version"
  end
end
