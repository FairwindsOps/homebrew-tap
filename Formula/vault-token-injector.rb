# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VaultTokenInjector < Formula
  desc "Detect deprecated Kubernetes apiVersions"
  homepage ""
  version "1.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/vault-token-injector/releases/download/v1.8.0/vault-token-injector_1.8.0_darwin_amd64.tar.gz"
      sha256 "17e39d074ee151cac45d91518c4e402607511948f254d27bf2d309d09bdbc995"

      def install
        bin.install "vault-token-injector"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/vault-token-injector/releases/download/v1.8.0/vault-token-injector_1.8.0_darwin_arm64.tar.gz"
      sha256 "29147d83c7212748c776dff0755fc65972f85ccf430600625423a68d9f726a75"

      def install
        bin.install "vault-token-injector"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/vault-token-injector/releases/download/v1.8.0/vault-token-injector_1.8.0_linux_armv6.tar.gz"
      sha256 "8371330a2d71a3848cc6ab3eac82ef4f9d9484d8d83f567152537482f7e185c6"

      def install
        bin.install "vault-token-injector"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/vault-token-injector/releases/download/v1.8.0/vault-token-injector_1.8.0_linux_amd64.tar.gz"
      sha256 "0d216cc496af9d4fe580ac633fd08674d3f3b7a658902a2e62f8a41ed1c290b2"

      def install
        bin.install "vault-token-injector"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/vault-token-injector/releases/download/v1.8.0/vault-token-injector_1.8.0_linux_arm64.tar.gz"
      sha256 "5ecff014cf3b284c9a1871f88401346af6072172bc95a446c2d7cccc0e414fb4"

      def install
        bin.install "vault-token-injector"
      end
    end
  end

  test do
    system "#{bin}/vault-token-injector version"
  end
end
