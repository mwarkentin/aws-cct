# This file was generated by GoReleaser. DO NOT EDIT.
class AwsCct < Formula
  desc "AWS Cost Comparison Tool"
  homepage "https://github.com/rocketmiles/aws-cct"
  version "0.3.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/rocketmiles/aws-cct/releases/download/v0.3.2/aws-cct_0.3.2_Darwin_x86_64.tar.gz"
    sha256 "a968eb95942b0a2dcb20cb69ab9a5c29301cb12d9f1a2f7297d46f67c20b8888"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/rocketmiles/aws-cct/releases/download/v0.3.2/aws-cct_0.3.2_Linux_x86_64.tar.gz"
      sha256 "c94804c0eb7ff4e710e76dbad3d3f7b210fc8aaeda243d0225ec6484fb89868c"
    end
  end

  def install
    bin.install "aws-cct"
  end

  test do
    system "#{bin}/aws-cct --help"
  end
end
