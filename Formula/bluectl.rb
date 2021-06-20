# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bluectl < Formula
  desc "The official command line interface for Alphaus services."
  homepage "https://github.com/alphauslabs/bluectl"
  version "0.2.10"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.2.10/bluectl_0.2.10_darwin_amd64.tar.gz"
      sha256 "44d10e8f9242d2ac2434b3be702a590dfd49eef777ae4e6b5d13e1cbcdeebf66"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.2.10/bluectl_0.2.10_linux_amd64.tar.gz"
      sha256 "3c659f2e7271ea7894947e49b6b0522fda8022f74232359217211c90d1740546"
    end
  end

  def install
    bin.install "bluectl"
  end

  test do
    assert_match /Command line interface for Alphaus/, shell_output("#{bin}/bluectl -h", 0)
  end
end
