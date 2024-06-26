# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Oops < Formula
  desc "Kubernetes-native testing tool."
  homepage "https://github.com/alphauslabs/oops"
  version "1.2.8"

  on_macos do
    url "https://github.com/alphauslabs/oops/releases/download/v1.2.8/oops_1.2.8_darwin_amd64.tar.gz"
    sha256 "0f947573aa847b7c0af8e29b043d9a3f5b4182a90aec1c32f6f976f456aaa62c"

    def install
      bin.install "oops"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Oops
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/alphauslabs/oops/releases/download/v1.2.8/oops_1.2.8_linux_amd64.tar.gz"
      sha256 "2877b83275d87e647ac37b2f35cccf54e6bd62fef3abe76c1f8c2807fb17fd4c"

      def install
        bin.install "oops"
      end
    end
  end

  test do
    assert_match /Kubernetes-native testing tool/, shell_output("#{bin}/oops -h", 0)
  end
end
