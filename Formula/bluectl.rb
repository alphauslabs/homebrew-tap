# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bluectl < Formula
  desc "The official command line interface for Alphaus services."
  homepage "https://github.com/alphauslabs/bluectl"
  version "0.2.7"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.2.7/bluectl_0.2.7_darwin_amd64.tar.gz"
      sha256 "f422c03f93d74d756f25da4c04395951c1fa0b10dcc2ed54f1af5112bf8744f1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.2.7/bluectl_0.2.7_linux_amd64.tar.gz"
      sha256 "419c6119232da7bec45893b54f4e2adf79779bf6d8f8e15d3565c164ac87cb0e"
    end
  end

  def install
    bin.install "bluectl"
  end

  test do
    assert_match /Command line interface for Alphaus/, shell_output("#{bin}/bluectl -h", 0)
  end
end
