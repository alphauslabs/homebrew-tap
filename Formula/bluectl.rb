# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bluectl < Formula
  desc "The official command line interface for Alphaus services."
  homepage "https://github.com/alphauslabs/bluectl"
  version "0.8.2"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.8.2/bluectl_0.8.2_darwin_amd64.tar.gz"
      sha256 "29d84f54826af595c8763bea91a91627c69baa2ab112d06da03233e9faffa223"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.8.2/bluectl_0.8.2_linux_amd64.tar.gz"
      sha256 "4c76367aaf1ec5c1578d34e8395168a00e765948182b4111146cd107bde35420"
    end
  end

  def install
    bin.install "bluectl"
  end

  test do
    assert_match /Command line interface for Alphaus/, shell_output("#{bin}/bluectl -h", 0)
  end
end
