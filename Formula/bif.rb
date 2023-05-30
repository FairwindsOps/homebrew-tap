# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bif < Formula
  desc "Detect deprecated Kubernetes apiVersions"
  homepage ""
  version "0.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/bif/releases/download/v0.0.4/bif_0.0.4_darwin_amd64.tar.gz"
      sha256 "6fdaf0f9c377f453a84955afe375054b208cacce2cf87033526c0b073ac43655"

      def install
        bin.install "bif"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/bif/releases/download/v0.0.4/bif_0.0.4_darwin_arm64.tar.gz"
      sha256 "fa3de6c9121fab4bc2edc677030e18bdb0246f2c8af9f279aa01a9d076dacc2e"

      def install
        bin.install "bif"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/bif/releases/download/v0.0.4/bif_0.0.4_linux_armv6.tar.gz"
      sha256 "2624be70eb5b0246c57b9840065f14d197305ad86977f3b35d77810ebd128c45"

      def install
        bin.install "bif"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/bif/releases/download/v0.0.4/bif_0.0.4_linux_arm64.tar.gz"
      sha256 "290fc4e541e263d29b1dd0c391e1332ab1d61ab33a37b9b1213d869000f6f227"

      def install
        bin.install "bif"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/bif/releases/download/v0.0.4/bif_0.0.4_linux_amd64.tar.gz"
      sha256 "14d687701c8d5b9f26b93d7f58d143034d9c2733d7d2cb551fe230469bae83cb"

      def install
        bin.install "bif"
      end
    end
  end

  test do
    system "#{bin}/bif version"
  end
end
