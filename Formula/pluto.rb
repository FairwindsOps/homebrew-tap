# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pluto < Formula
  desc "Detect deprecated Kubernetes apiVersions"
  homepage ""
  version "5.21.1"

  on_macos do
    on_intel do
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.21.1/pluto_5.21.1_darwin_amd64.tar.gz"
      sha256 "00987ba2b7f48c0881e3fdfb88cfba8ee91da3776d6a02586cca392c1a7534ff"

      def install
        bin.install "pluto"
      end
    end
    on_arm do
      url "https://github.com/FairwindsOps/pluto/releases/download/v5.21.1/pluto_5.21.1_darwin_arm64.tar.gz"
      sha256 "decf74c47f73e19deccc20ac9d107d6575466ae305218c8396a1ea428a693693"

      def install
        bin.install "pluto"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FairwindsOps/pluto/releases/download/v5.21.1/pluto_5.21.1_linux_amd64.tar.gz"
        sha256 "3d736c29305bc5088f8185ed5519c23a4f076738cfa2c036347901df598ecce5"

        def install
          bin.install "pluto"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/FairwindsOps/pluto/releases/download/v5.21.1/pluto_5.21.1_linux_armv6.tar.gz"
        sha256 "526560b4f7b306f1c2e56973411f34854a29eff698d53286f0d9c7606c953427"

        def install
          bin.install "pluto"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FairwindsOps/pluto/releases/download/v5.21.1/pluto_5.21.1_linux_arm64.tar.gz"
        sha256 "13b55c16b3b370804b0db0ad4a37307400ac5325e7c24a8f61746162ab2b6080"

        def install
          bin.install "pluto"
        end
      end
    end
  end

  test do
    system "#{bin}/pluto version"
  end
end
