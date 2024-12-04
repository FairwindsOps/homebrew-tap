# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Insights < Formula
  desc "Command Line utility for Fairwinds Insights"
  homepage ""
  version "2.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/insights-cli/releases/download/v2.1.1/insights-cli_2.1.1_darwin_amd64.tar.gz"
      sha256 "6be816f6c91e65fef5eec79b9d81f1f6bc54948601fd9cbd4a4fdf1bbba0996b"

      def install
        bin.install "insights-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/insights-cli/releases/download/v2.1.1/insights-cli_2.1.1_darwin_arm64.tar.gz"
      sha256 "4661e5bbcc234a603e6b04cd0af1a3cfc1a8adee214f54e55181700136d01393"

      def install
        bin.install "insights-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/insights-cli/releases/download/v2.1.1/insights-cli_2.1.1_linux_amd64.tar.gz"
      sha256 "7d1b8edbd796d3d17edcef23d9839d7663e635c8022fa1ade336845117f688a4"

      def install
        bin.install "insights-cli"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/insights-cli/releases/download/v2.1.1/insights-cli_2.1.1_linux_arm64.tar.gz"
      sha256 "2f2f017e7b86b17e294849af4e974977542ba2032e344ad05dfb43f36784020c"

      def install
        bin.install "insights-cli"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/insights-cli/releases/download/v2.1.1/insights-cli_2.1.1_linux_armv6.tar.gz"
      sha256 "8a9677633f7b43e6029da3b34130d8e1d3fe9cf72006a788dcdd2356f109c1b9"

      def install
        bin.install "insights-cli"
      end
    end
  end

  test do
    system "#{bin}/insights version"
  end
end
