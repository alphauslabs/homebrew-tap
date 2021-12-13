# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bluectl < Formula
  desc "The official command line interface for Alphaus services."
  homepage "https://github.com/alphauslabs/bluectl"
  version "0.19.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.19.0/bluectl_0.19.0_darwin_amd64.tar.gz"
      sha256 "666075814472823f8e63a03c4265d0178f37d91085ad74f3fb5f3e23633e6459"

      def install
        bin.install "bluectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.19.0/bluectl_0.19.0_linux_amd64.tar.gz"
      sha256 "82390b4d4f453fdd2ec05ac87e105524916194eb6d8586073ba0b07ad519fa83"

      def install
        bin.install "bluectl"
      end
    end
  end

  test do
    assert_match /Command line interface for Alphaus/, shell_output("#{bin}/bluectl -h", 0)
  end
end
