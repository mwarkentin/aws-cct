# This file was generated by GoReleaser. DO NOT EDIT.
class AwsCct < Formula
  desc "AWS Cost Comparison Tool"
  homepage "https://github.com/rocketmiles/aws-cct"
  version "1.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/rocketmiles/aws-cct/releases/download/v1.1.0/aws-cct_1.1.0_Darwin_x86_64.tar.gz"
    sha256 "31b6bccc7a6a6da69e4a4800eb97c5237b1bd5d2e4b1e9723f5e44256f6680d4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/rocketmiles/aws-cct/releases/download/v1.1.0/aws-cct_1.1.0_Linux_x86_64.tar.gz"
      sha256 "645e98375cc8b90796fe4b28ae273a86be8c84471bc749c407328a5e30d035b6"
    end
  end

  def install
    bin.install "aws-cct"
  end

  test do
    system "#{bin}/aws-cct --help"
  end
end
