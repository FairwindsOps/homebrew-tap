# This file was generated by GoReleaser. DO NOT EDIT.
class Pluto < Formula
  desc "Detect deprecated Kubernetes apiVersions"
  homepage ""
  version "4.0.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/FairwindsOps/pluto/releases/download/v4.0.5/pluto_4.0.5_darwin_amd64.tar.gz"
    sha256 "94d65d399b84b742f69985dab9e58255b95ddf138d6d0401f6ba3a696856289c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v4.0.5/pluto_4.0.5_linux_amd64.tar.gz"
      sha256 "ab12e4fccd10ba94f44b7a7af226ecea1cfd168d2dca97646f0dbd3da03d8b35"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/FairwindsOps/pluto/releases/download/v4.0.5/pluto_4.0.5_linux_arm64.tar.gz"
        sha256 "a040e83dbcd3b677be9890aa442b7adc3ac93a0ff2dbc225d4a91dc7ed6b5cf7"
      else
        url "https://github.com/FairwindsOps/pluto/releases/download/v4.0.5/pluto_4.0.5_linux_armv6.tar.gz"
        sha256 "01d9e0871b4e44600b0011bc15e15a40ed044d74344ce64225da5d407843fddc"
      end
    end
  end

  def install
    bin.install "pluto"
  end

  test do
    system "#{bin}/pluto version"
  end
end
