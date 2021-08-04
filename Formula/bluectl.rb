# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bluectl < Formula
  desc "The official command line interface for Alphaus services."
  homepage "https://github.com/alphauslabs/bluectl"
  version "0.6.5"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.6.5/bluectl_0.6.5_darwin_amd64.tar.gz"
      sha256 "00b6ec4ac0b036b8a087cd8f05a9be775571a4dd6c5d6d73c292d1841993e896"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.6.5/bluectl_0.6.5_linux_amd64.tar.gz"
      sha256 "c06cd9a5959a28c2c88acee6ea1be22025af0c373678bd5e037af14b03be3bef"
    end
  end

  def install
    bin.install "bluectl"
  end

  test do
    assert_match /Command line interface for Alphaus/, shell_output("#{bin}/bluectl -h", 0)
  end
end
