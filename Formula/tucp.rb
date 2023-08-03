# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tucp < Formula
  desc "The official command line interface for Alphaus TrueUnblended Control Plane service."
  homepage "https://github.com/alphauslabs/tucp"
  version "0.8.0"

  on_macos do
    url "https://github.com/alphauslabs/tucp/releases/download/v0.8.0/tucp_0.8.0_darwin_amd64.tar.gz"
    sha256 "e515fc1ba02a099d5cd669a92e69c95e14b4c1685a101d1a77a5e3e06a93e2cf"

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
      url "https://github.com/alphauslabs/tucp/releases/download/v0.8.0/tucp_0.8.0_linux_amd64.tar.gz"
      sha256 "1515f2a09985eb6dd368846c4c7f2d9e697d7be26b5cbcb788e256441be53bb9"

      def install
        bin.install "tucp"
      end
    end
  end

  test do
    assert_match /Command line interface for /, shell_output("#{bin}/tucp -h", 0)
  end
end
