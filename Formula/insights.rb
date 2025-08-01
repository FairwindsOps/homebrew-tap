# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Insights < Formula
  desc "Command Line utility for Fairwinds Insights"
  homepage ""
  version "2.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/insights-cli/releases/download/v2.6.0/insights-cli_2.6.0_darwin_amd64.tar.gz"
      sha256 "92a46323e63a64e4f30820ef1629e3aca1bcfbb44c6a82ee70ff9951347c036a"

      def install
        bin.install "insights-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/insights-cli/releases/download/v2.6.0/insights-cli_2.6.0_darwin_arm64.tar.gz"
      sha256 "bfd59fe57c5a255077c82ce49193e79519f9dc8bdbd313127b8c057e908f58c0"

      def install
        bin.install "insights-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/insights-cli/releases/download/v2.6.0/insights-cli_2.6.0_linux_amd64.tar.gz"
      sha256 "e733ce45deb4d54737b98614b437c9934c7129de108ffceeafb69f5a7de91924"
      def install
        bin.install "insights-cli"
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/insights-cli/releases/download/v2.6.0/insights-cli_2.6.0_linux_armv6.tar.gz"
      sha256 "37ef04f798dab377382ef99a9deb6669354b9cfadee6f1caa2f30ec4f7cb6e15"
      def install
        bin.install "insights-cli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/insights-cli/releases/download/v2.6.0/insights-cli_2.6.0_linux_arm64.tar.gz"
      sha256 "111319ce1b23ed8f319017975417b9529b640ef27aed25790e80df256405d27d"
      def install
        bin.install "insights-cli"
      end
    end
  end

  test do
    system "#{bin}/insights version"
  end
end
