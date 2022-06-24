# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pluto < Formula
  desc "Detect deprecated Kubernetes apiVersions"
  homepage ""
  version "5.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.9.0/pluto_5.9.0_darwin_arm64.tar.gz"
      sha256 "68139d835a1a6474e59ad316256035fb2685ab32e263c827b52f8c5bc7e86c7f"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.9.0/pluto_5.9.0_darwin_amd64.tar.gz"
      sha256 "02590af6501f9615ae9338d68591c71a0d926abd714ad93fe1efdef8ce1af8be"

      def install
        bin.install "pluto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.9.0/pluto_5.9.0_linux_armv6.tar.gz"
      sha256 "02bfa7fd16a5d3e8d176de9ffd3080b9b411d3b77687f46ca48e2748a0728e3b"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.9.0/pluto_5.9.0_linux_arm64.tar.gz"
      sha256 "e22d5486fe07aba66ba366157d7254e82d28ab5a58b5642ac49859dd0b4df818"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.9.0/pluto_5.9.0_linux_amd64.tar.gz"
      sha256 "73c69d76ae845c4a74a5b1377de294000a87ad5d3e4f674246708e83cfc9f398"

      def install
        bin.install "pluto"
      end
    end
  end

  test do
    system "#{bin}/pluto version"
  end
end
