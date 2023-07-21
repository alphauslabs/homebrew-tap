# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tucp < Formula
  desc "The official command line interface for Alphaus TrueUnblended Control Plane service."
  homepage "https://github.com/alphauslabs/tucp"
  version "0.2.1"

  on_macos do
    url "https://github.com/alphauslabs/tucp/releases/download/v0.2.1/tucp_0.2.1_darwin_amd64.tar.gz"
    sha256 "d85c594caa20b6e288fd3aad7819a6446785d2874d6b3880b1be26e5db260f13"

    def install
      bin.install "tucp"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Tucp
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/tucp/releases/download/v0.2.1/tucp_0.2.1_linux_amd64.tar.gz"
      sha256 "b0d4f6db7f3ad544b570cd6e31acd4186d2f863b1bb3a2c66649675ca5a0b692"

      def install
        bin.install "tucp"
      end
    end
  end

  test do
    assert_match /Command line interface for /, shell_output("#{bin}/tucp -h", 0)
  end
end