# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pluto < Formula
  desc "Detect deprecated Kubernetes apiVersions"
  homepage ""
  version "5.22.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.22.1/pluto_5.22.1_darwin_amd64.tar.gz"
      sha256 "1500aa4b58bcbc1c68e7ec40391275f828df49346d686ce0dae01f5abe806cce"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.22.1/pluto_5.22.1_darwin_arm64.tar.gz"
      sha256 "3abca0f5502a6859a90c24a171b5691a0e5b02d7c1c8f6c88c03c08b9c20f58c"

      def install
        bin.install "pluto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.22.1/pluto_5.22.1_linux_amd64.tar.gz"
      sha256 "c05645d3e435b1f4ae15477db71f06735c3f54e86cc760b8de0698ce0fcb549d"
      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.arm? and !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.22.1/pluto_5.22.1_linux_armv6.tar.gz"
      sha256 "d4dfd84811465517be2b4433d9276a50831b6f56545badfb38c429e8ce34f563"
      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.22.1/pluto_5.22.1_linux_arm64.tar.gz"
      sha256 "948df6b33cda1ed686120657de59a765845061c30349284b95e9765fd62bfed2"
      def install
        bin.install "pluto"
      end
    end
  end

  test do
    system "#{bin}/pluto version"
  end
end
