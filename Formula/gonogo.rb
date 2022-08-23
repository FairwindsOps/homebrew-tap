# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gonogo < Formula
  desc "Check cluster addons for upgrade confidence"
  homepage ""
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/gonogo/releases/download/v0.2.4/gonogo_0.2.4_darwin_arm64.tar.gz"
      sha256 "0a498f301cf604ab584da1996bcdccef9c5536e4f4a2d7868965b82141306011"

      def install
        bin.install "gonogo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/gonogo/releases/download/v0.2.4/gonogo_0.2.4_darwin_amd64.tar.gz"
      sha256 "0d379a0c5f3919a1a26916fc3390986a01d0c5b838af99d8ba3ad077762a6127"

      def install
        bin.install "gonogo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/gonogo/releases/download/v0.2.4/gonogo_0.2.4_linux_armv6.tar.gz"
      sha256 "e80937e7df7d47ae7f68eb9f8e092a3de4fa28f4f6f22446b30230f75b8e908b"

      def install
        bin.install "gonogo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/gonogo/releases/download/v0.2.4/gonogo_0.2.4_linux_arm64.tar.gz"
      sha256 "f8f79481b6b4665ef614442b92627997a7b8f6de593649d2f1b2bdb3b4cdc309"

      def install
        bin.install "gonogo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/gonogo/releases/download/v0.2.4/gonogo_0.2.4_linux_amd64.tar.gz"
      sha256 "a41015874fc1f4f6ff0e267dcd205ab810810ba3a99f153890fded63ed6419a1"

      def install
        bin.install "gonogo"
      end
    end
  end

  test do
    system "#{bin}/gonogo version"
  end
end
