# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Iam < Formula
  desc "The official command line interface for Alphaus internal IAM service."
  homepage "https://github.com/alphauslabs/iam"
  version "0.4.4"

  on_macos do
    url "https://github.com/alphauslabs/iam/releases/download/v0.4.4/iam_0.4.4_darwin_amd64.tar.gz"
    sha256 "fd32640e9be4ce174943e15c03769f4e379608ac85bc6387976c7d1ec05c8201"

    def install
      bin.install "iam"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Iam
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/iam/releases/download/v0.4.4/iam_0.4.4_linux_amd64.tar.gz"
      sha256 "db5ca627317b58350a69fd09e6732dede02489b23cd5f091f43002619d0ecfba"

      def install
        bin.install "iam"
      end
    end
  end

  test do
    assert_match /Command line interface for /, shell_output("#{bin}/iam -h", 0)
  end
end
