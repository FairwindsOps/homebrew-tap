# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pluto < Formula
  desc "Detect deprecated Kubernetes apiVersions"
  homepage ""
  version "5.19.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.19.3/pluto_5.19.3_darwin_arm64.tar.gz"
      sha256 "6e05dece85d9bbff21895c860a7423401213f44935cfec6ca9ff97fe5ababc26"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.19.3/pluto_5.19.3_darwin_amd64.tar.gz"
      sha256 "1b520cd2fc246b42f5ffb626cc43b90deaab17557842b76afbaf9b843130717c"

      def install
        bin.install "pluto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.19.3/pluto_5.19.3_linux_armv6.tar.gz"
      sha256 "4d3cc85abf04fef66c2a98aca31d02eada17163c97195bbecc83232cbf7398bc"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.19.3/pluto_5.19.3_linux_arm64.tar.gz"
      sha256 "35aefc563276921859bab0e435acdba72ba6420b233fba77ce25944f9832ed3a"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.19.3/pluto_5.19.3_linux_amd64.tar.gz"
      sha256 "5b74b8b1d4d5a92c00db4d466badb139aa26cbde88f515439f832b5b58c262ec"

      def install
        bin.install "pluto"
      end
    end
  end

  test do
    system "#{bin}/pluto version"
  end
end
