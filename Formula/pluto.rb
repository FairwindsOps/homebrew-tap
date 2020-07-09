# This file was generated by GoReleaser. DO NOT EDIT.
class Pluto < Formula
  desc "Detect deprecated Kubernetes apiVersions"
  homepage ""
  version "3.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/FairwindsOps/pluto/releases/download/v3.2.0/pluto_3.2.0_darwin_amd64.tar.gz"
    sha256 "5d6fec1121428932c156c103c031fefeebc1f0785eca58f52de91afa98830ff7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/FairwindsOps/pluto/releases/download/v3.2.0/pluto_3.2.0_linux_amd64.tar.gz"
      sha256 "2a9d42a72358433b20f9acd3b9c16dfd6a95c420224c86b17def858e3263ee5d"
    end
  end

  def install
    bin.install "pluto"
  end

  test do
    system "#{bin}/pluto version"
  end
end
