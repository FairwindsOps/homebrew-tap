# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pluto < Formula
  desc "Detect deprecated Kubernetes apiVersions"
  homepage ""
  version "5.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.2.5/pluto_5.2.5_darwin_arm64.tar.gz"
      sha256 "80745611b1cda53f9c9ef68d8cfc4acf93c8318d6eea4c0b83ada9d50d237880"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.2.5/pluto_5.2.5_darwin_amd64.tar.gz"
      sha256 "c162ac1071bc6597111d3d3732073c1b3415336e93181718c90ea085dad836ce"

      def install
        bin.install "pluto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.2.5/pluto_5.2.5_linux_armv6.tar.gz"
      sha256 "9d4be89d5608e368b10a890091686b3bde6b68f93f847eb562d260a8c07ccb7f"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.2.5/pluto_5.2.5_linux_arm64.tar.gz"
      sha256 "679e09b75df175b8803ed6c6259dc059fb858019812e7d2f0a06d1030fc59ba2"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.2.5/pluto_5.2.5_linux_amd64.tar.gz"
      sha256 "ac9d27f6fb34960b5f5a99ccfb2f8679bec1939a36becc725f98e06fe7402675"

      def install
        bin.install "pluto"
      end
    end
  end

  test do
    system "#{bin}/pluto version"
  end
end
