# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Polaris < Formula
  desc "Open Source Best Practices for Kubernetes"
  homepage ""
  version "9.6.2"

  on_macos do
    on_intel do
      url "https://github.com/FairwindsOps/polaris/releases/download/9.6.2/polaris_darwin_amd64.tar.gz"
      sha256 "39a4e43835de69ed30d9b3f90a76446a39e2711c5a3ad5621d3561b49638de75"

      def install
        bin.install "polaris"
      end
    end
    on_arm do
      url "https://github.com/FairwindsOps/polaris/releases/download/9.6.2/polaris_darwin_arm64.tar.gz"
      sha256 "b568eb9132c46b6445d1bc86411cc70f332277fcc432954b293452d044326baf"

      def install
        bin.install "polaris"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FairwindsOps/polaris/releases/download/9.6.2/polaris_linux_amd64.tar.gz"
        sha256 "5f9b7c39e796b489466a51897e7f3e0898d2da480169f3cb5e8b266f200ffc24"

        def install
          bin.install "polaris"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/FairwindsOps/polaris/releases/download/9.6.2/polaris_linux_armv6.tar.gz"
        sha256 "c53e82e852edbd558a9150e46cdaf9c91c419320763b8daa18adc14e8056b56e"

        def install
          bin.install "polaris"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FairwindsOps/polaris/releases/download/9.6.2/polaris_linux_arm64.tar.gz"
        sha256 "76822a9da1bbed0d74dbb4877b3f31b0f4df4f12d44c2b6e1ef4e6d93fa25003"

        def install
          bin.install "polaris"
        end
      end
    end
  end

  test do
    system "#{bin}/polaris version"
  end
end
