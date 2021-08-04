# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bluectl < Formula
  desc "The official command line interface for Alphaus services."
  homepage "https://github.com/alphauslabs/bluectl"
  version "0.6.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.6.0/bluectl_0.6.0_darwin_amd64.tar.gz"
      sha256 "ccb8b4a5925e04e461f4c04474d6fd144a351b6659a68576871b3d80bb8fe2ca"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.6.0/bluectl_0.6.0_linux_amd64.tar.gz"
      sha256 "784529f3a66c940ccb08dc0e97ad75e095da6c4d0a15b23806a5f587252b06d9"
    end
  end

  def install
    bin.install "bluectl"
  end

  test do
    assert_match /Command line interface for Alphaus/, shell_output("#{bin}/bluectl -h", 0)
  end
end
