# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  version "9.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/polaris/releases/download/9.3.0/polaris_darwin_arm64.tar.gz"
      sha256 "5fff3f2f7881e0924b1b73a3e32b7a591641bba3e5f332047125d917fa7d42ec"

      def install
        bin.install "polaris"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/polaris/releases/download/9.3.0/polaris_darwin_amd64.tar.gz"
      sha256 "3af794c1135d4c6516a366916c79e35b9f06d7aeb939f7710e9f9a2b350f1c2c"

      def install
        bin.install "polaris"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/polaris/releases/download/9.3.0/polaris_linux_armv6.tar.gz"
      sha256 "a91b2b155e2d5d28cdac6c437c47857e13671b3308d88e383093a52ab85b765c"

      def install
        bin.install "polaris"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/polaris/releases/download/9.3.0/polaris_linux_arm64.tar.gz"
      sha256 "a10a9f1fffd91ea79af325e2e3e01d7a1b6b4dbf712d5eb088bd15985ca45da9"

      def install
        bin.install "polaris"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/polaris/releases/download/9.3.0/polaris_linux_amd64.tar.gz"
      sha256 "b255efc0d1d74db31fe22f74c63cf976933db6c6f3d4f216da26781b5e808cdd"

      def install
        bin.install "polaris"
      end
    end
  end

  test do
    system "#{bin}/polaris version"
  end
end
