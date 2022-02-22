# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RbacLookup < Formula
  desc "Reverse Lookup for Kubernetes RBAC"
  homepage "https://github.com/FairWindsOps/rbac-lookup"
  version "0.8.3"
  license "apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.8.3/rbac-lookup_0.8.3_Darwin_arm64.tar.gz"
      sha256 "7df3a96cb01d5ae64659b0641c731095d3b247bbbe0638f7ae3e8d37e883fb87"

      def install
        bin.install "rbac-lookup"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.8.3/rbac-lookup_0.8.3_Darwin_x86_64.tar.gz"
      sha256 "76a5a5ba2ec1a6e9cd824cb982e1da45edef00d8d70dad14c85db0fcfdd766ec"

      def install
        bin.install "rbac-lookup"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.8.3/rbac-lookup_0.8.3_Linux_armv6.tar.gz"
      sha256 "7d808bacbf566edf01f69d0513e64d93d2fd0a6a55cb05c4be33c8884dca192f"

      def install
        bin.install "rbac-lookup"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.8.3/rbac-lookup_0.8.3_Linux_arm64.tar.gz"
      sha256 "8400ff3a87d6d8677f649352739505c6431a9cbe609673b26ed9d51558f56156"

      def install
        bin.install "rbac-lookup"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.8.3/rbac-lookup_0.8.3_Linux_x86_64.tar.gz"
      sha256 "0844a045c7d887d53770610b362e8f246e4a706f357e0b73bc06474a8ea43fb4"

      def install
        bin.install "rbac-lookup"
      end
    end
  end

  test do
    system "#{bin}/rbac-lookup version"
  end
end
