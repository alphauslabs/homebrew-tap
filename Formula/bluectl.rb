# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bluectl < Formula
  desc "The official command line interface for Alphaus services."
  homepage "https://github.com/alphauslabs/bluectl"
  version "0.5.4"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.5.4/bluectl_0.5.4_darwin_amd64.tar.gz"
      sha256 "2af4d7c6e1b4d60903798c54d3e030f1735053e1650b2fc3aafbdad1a103b9ab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.5.4/bluectl_0.5.4_linux_amd64.tar.gz"
      sha256 "4b66207a8549e3c0a07af422c422979e3a0ba18026996854bc24770868040789"
    end
  end

  def install
    bin.install "bluectl"
  end

  test do
    assert_match /Command line interface for Alphaus/, shell_output("#{bin}/bluectl -h", 0)
  end
end
