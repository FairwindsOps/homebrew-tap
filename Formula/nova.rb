# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nova < Formula
  desc "Check installed Helm charts for updates"
  homepage ""
  version "3.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/nova/releases/download/3.2.0/nova_3.2.0_darwin_arm64.tar.gz"
      sha256 "89f744a88dad0e73866d06e79afccd5476152770c70101361566b234b0722101"

      def install
        bin.install "nova"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/nova/releases/download/3.2.0/nova_3.2.0_darwin_amd64.tar.gz"
      sha256 "7ed7fc1f8510cbb7a76966133d27da12099566f81e7bff507748d708a8d85d73"

      def install
        bin.install "nova"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/nova/releases/download/3.2.0/nova_3.2.0_linux_armv6.tar.gz"
      sha256 "759ee06d7524194d11f6abf082d9d419da8607e9b85265f481300ca6b1aa17c8"

      def install
        bin.install "nova"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/nova/releases/download/3.2.0/nova_3.2.0_linux_arm64.tar.gz"
      sha256 "bd8655a5b2ec942ebfe2b23adc5193995b30ce3bbdf05725e434d54f35aab973"

      def install
        bin.install "nova"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/nova/releases/download/3.2.0/nova_3.2.0_linux_amd64.tar.gz"
      sha256 "526937f53f031fdd05bcda1f2f7763984cba6c19748e64ecb8bc2825df8c0111"

      def install
        bin.install "nova"
      end
    end
  end

  test do
    system "#{bin}/nova version"
  end
end
