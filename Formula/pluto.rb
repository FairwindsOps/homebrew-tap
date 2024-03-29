# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pluto < Formula
  desc "Detect deprecated Kubernetes apiVersions"
  homepage ""
  version "5.19.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.19.0/pluto_5.19.0_darwin_amd64.tar.gz"
      sha256 "a439c444c6052c8b93a3fa35cfe5aadd7c6a0c40ae564dda45bda00bc050135e"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.19.0/pluto_5.19.0_darwin_arm64.tar.gz"
      sha256 "070203cc996ba46de6cb629a6de0a30fbe5cf7a5b5d0fc97ed6462447662883e"

      def install
        bin.install "pluto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.19.0/pluto_5.19.0_linux_arm64.tar.gz"
      sha256 "227057bccb5a35ab56ea5e3ac1316b8f02c003c496db5f70e1a21e02cfb885c4"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.19.0/pluto_5.19.0_linux_amd64.tar.gz"
      sha256 "e2a73d2501b49386dd12331a9880a989d97bc183339496f156dc86ad4813d530"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.19.0/pluto_5.19.0_linux_armv6.tar.gz"
      sha256 "3b3dfb2a053457b67a6ebf095b3a857e8be906f8e9e99625c7824c94e7a4c785"

      def install
        bin.install "pluto"
      end
    end
  end

  test do
    system "#{bin}/pluto version"
  end
end
