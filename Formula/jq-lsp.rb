# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class JqLsp < Formula
  desc "jq language server"
  homepage "https://github.com/wader/jq-lsp"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wader/jq-lsp/releases/download/v0.1.1/jq-lsp_0.1.1_macos_arm64.zip"
      sha256 "382c51cacc388776098156e0fb56afee4112f311c8ba96cd671d81ff19b97c21"

      def install
        bin.install "jq-lsp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wader/jq-lsp/releases/download/v0.1.1/jq-lsp_0.1.1_macos_amd64.zip"
      sha256 "1014f2f0776cfd59c1acabf06f0b68ca68641954d840a44fc8f33c5599d358da"

      def install
        bin.install "jq-lsp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/wader/jq-lsp/releases/download/v0.1.1/jq-lsp_0.1.1_linux_arm64.tar.gz"
      sha256 "5525a209ee3b1772c2ecb3220e3db658b5d4b81518e32239892c0c1e7919eef2"

      def install
        bin.install "jq-lsp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wader/jq-lsp/releases/download/v0.1.1/jq-lsp_0.1.1_linux_amd64.tar.gz"
      sha256 "71013240e3dd51c5cc41ddcae9cec8bacda3d56c09d8fcd6134395e29f2e1f18"

      def install
        bin.install "jq-lsp"
      end
    end
  end

  test do
    system "#{bin}/jq-lsp --version"
  end
end