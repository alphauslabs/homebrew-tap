# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tucp < Formula
  desc "The official command line interface for Alphaus TrueUnblended Control Plane service."
  homepage "https://github.com/alphauslabs/tucp"
  version "0.3.0"

  on_macos do
    url "https://github.com/alphauslabs/tucp/releases/download/v0.3.0/tucp_0.3.0_darwin_amd64.tar.gz"
    sha256 "a7c0c51c913ef89b1dd0ff56ec2a45b63089e27008746462a717342912d32aaa"

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
      url "https://github.com/alphauslabs/tucp/releases/download/v0.3.0/tucp_0.3.0_linux_amd64.tar.gz"
      sha256 "05eab3fae78b81bdaa3a56cce71c5aeddf5ddaa7ffcf768c24dd3a612dbcc176"

      def install
        bin.install "tucp"
      end
    end
  end

  test do
    assert_match /Command line interface for /, shell_output("#{bin}/tucp -h", 0)
  end
end
