# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bluectl < Formula
  desc "The official command line interface for Alphaus services."
  homepage "https://github.com/alphauslabs/bluectl"
  version "0.34.15"

  on_macos do
    url "https://github.com/alphauslabs/bluectl/releases/download/v0.34.15/bluectl_0.34.15_darwin_amd64.tar.gz"
    sha256 "3e37d7d1258a83805f4812492267f911397ebc74f0b3e6873ea24f557dd4230b"

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
      url "https://github.com/alphauslabs/bluectl/releases/download/v0.34.15/bluectl_0.34.15_linux_amd64.tar.gz"
      sha256 "3aadf6d6e74787d3b3c95968fc743a0adb9423c4adc299be2bb98d07fc67ce62"

      def install
        bin.install "bluectl"
      end
    end
  end

  test do
    assert_match /Command line interface for Alphaus/, shell_output("#{bin}/bluectl -h", 0)
  end
end
