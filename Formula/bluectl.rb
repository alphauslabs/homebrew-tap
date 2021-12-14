# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bluectl < Formula
  desc "The official command line interface for Alphaus services."
  homepage "https://github.com/alphauslabs/bluectl"
  version "0.20.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.20.0/bluectl_0.20.0_darwin_amd64.tar.gz"
      sha256 "178853eccd920e24d7afd211e44fd8ddf2257de0d365155cd1b77b8698fac21e"

      def install
        bin.install "bluectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.20.0/bluectl_0.20.0_linux_amd64.tar.gz"
      sha256 "b5f92c1c4cd9792e6b1ddcc8fede90ea5f5c417388ebcad08b97be01089180f4"

      def install
        bin.install "bluectl"
      end
    end
  end

  test do
    assert_match /Command line interface for Alphaus/, shell_output("#{bin}/bluectl -h", 0)
  end
end
