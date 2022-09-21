# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gonogo < Formula
  desc "Check cluster addons for upgrade confidence"
  homepage ""
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/gonogo/releases/download/v0.2.5/gonogo_0.2.5_darwin_arm64.tar.gz"
      sha256 "d8c8152965d0e9d21b3704526affff282c75f8f4e766263fc60e1faee399124b"

      def install
        bin.install "gonogo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/gonogo/releases/download/v0.2.5/gonogo_0.2.5_darwin_amd64.tar.gz"
      sha256 "018c66fbaa98ac9a67d945c68a0ba82a25c8451b01578110d63f3a7657aba193"

      def install
        bin.install "gonogo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/gonogo/releases/download/v0.2.5/gonogo_0.2.5_linux_armv6.tar.gz"
      sha256 "2ce81e0b70869d3d1162e1b31ef678994314bf5b7025facf09e4c030001508a3"

      def install
        bin.install "gonogo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/gonogo/releases/download/v0.2.5/gonogo_0.2.5_linux_arm64.tar.gz"
      sha256 "c8319534a1b9499cb79fcfebb105079fca4dfd1271656501aeb3408799a5f59e"

      def install
        bin.install "gonogo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/gonogo/releases/download/v0.2.5/gonogo_0.2.5_linux_amd64.tar.gz"
      sha256 "093cc41e820af13ed6860ab0bebfcaec4d3737f3ff91cfd51ac632716493710b"

      def install
        bin.install "gonogo"
      end
    end
  end

  test do
    system "#{bin}/gonogo version"
  end
end
