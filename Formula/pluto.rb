# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pluto < Formula
  desc "Detect deprecated Kubernetes apiVersions"
  homepage ""
  version "5.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.11.0/pluto_5.11.0_darwin_arm64.tar.gz"
      sha256 "d813573bcafdd1482dd85f9a0bd0a499c207ae35c0a0168ecf382418feb4c0b5"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.11.0/pluto_5.11.0_darwin_amd64.tar.gz"
      sha256 "045aa58de52a479fb5cceadd063408da61f4ee8485c90195eebb75452574249f"

      def install
        bin.install "pluto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.11.0/pluto_5.11.0_linux_armv6.tar.gz"
      sha256 "e3fc8577062990af065bc0fc631cb69c72d92dcdaf24ea7d7a6c5bd83b287862"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.11.0/pluto_5.11.0_linux_arm64.tar.gz"
      sha256 "d93335a5967b9d6d512c3fc8ff4228c575ac0cd3e9a541e1f921aa8bc86bd782"

      def install
        bin.install "pluto"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.11.0/pluto_5.11.0_linux_amd64.tar.gz"
      sha256 "262c7c19a772eeaca8fc7cad312b15956597f1a399f48383cd28ddad26fe7d33"

      def install
        bin.install "pluto"
      end
    end
  end

  test do
    system "#{bin}/pluto version"
  end
end
