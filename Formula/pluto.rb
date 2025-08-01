# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pluto < Formula
  desc "Detect deprecated Kubernetes apiVersions"
  homepage ""
  version "5.22.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.22.2/pluto_5.22.2_darwin_amd64.tar.gz"
      sha256 "184fa1f69e7f11c91efb5cf29fa536a9b815f4a977e12adfe790434b209c96ae"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.22.2/pluto_5.22.2_darwin_arm64.tar.gz"
      sha256 "806a55c1e81385ba5e02404ba1eae05e1277d1eeea1da65840561b008024d487"

      def install
        bin.install "pluto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.22.2/pluto_5.22.2_linux_amd64.tar.gz"
      sha256 "20ada5327c4d7384efb47916c726c59ca25a1840b2f6b567b969c6045c6fefce"
      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.22.2/pluto_5.22.2_linux_armv6.tar.gz"
      sha256 "0a9727b68012c3ee0f4a02cfa8670abc7c35bc4685ca4ba2aa02b0db6e8d676b"
      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.22.2/pluto_5.22.2_linux_arm64.tar.gz"
      sha256 "c67602bb2f266f5891333bb26d9c9cdf74a7d5032bdc4b40f04e76bbfe8a6427"
      def install
        bin.install "pluto"
      end
    end
  end

  test do
    system "#{bin}/pluto version"
  end
end
