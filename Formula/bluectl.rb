# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bluectl < Formula
  desc "The official command line interface for Alphaus services."
  homepage "https://github.com/alphauslabs/bluectl"
  version "0.33.10"

  on_macos do
    url "https://github.com/alphauslabs/bluectl/releases/download/v0.33.10/bluectl_0.33.10_darwin_amd64.tar.gz"
    sha256 "da5ddd1f88d45775acc0bdb5710875394254228d5568463fed7f1d19574028a6"

    def install
      bin.install "bluectl"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Bluectl
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.33.10/bluectl_0.33.10_linux_amd64.tar.gz"
      sha256 "9dbee66d923fc6377b5c86c5cd9139dc7df5641eb42d520e94b47fa0056f0fb6"

      def install
        bin.install "bluectl"
      end
    end
  end

  test do
    assert_match /Command line interface for Alphaus/, shell_output("#{bin}/bluectl -h", 0)
  end
end
