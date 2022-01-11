# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bluectl < Formula
  desc "The official command line interface for Alphaus services."
  homepage "https://github.com/alphauslabs/bluectl"
  version "0.23.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.23.0/bluectl_0.23.0_darwin_amd64.tar.gz"
      sha256 "6456d27478c23828cbf25ca957b93b7a70c4b0f5eec90562d53cde2bb6e3dc05"

      def install
        bin.install "bluectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.23.0/bluectl_0.23.0_linux_amd64.tar.gz"
      sha256 "4609adf4a6abb61eb04b468e9a533b994959112d8909090d4f5f47e4c3a16847"

      def install
        bin.install "bluectl"
      end
    end
  end

  test do
    assert_match /Command line interface for Alphaus/, shell_output("#{bin}/bluectl -h", 0)
  end
end
