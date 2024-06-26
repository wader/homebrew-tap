# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fq < Formula
  desc "jq for binary formats"
  homepage "https://github.com/wader/fq"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/wader/fq/releases/download/v0.11.0/fq_0.11.0_macos_amd64.zip"
      sha256 "c39095e95c9208f6c4fa76bffdd8a05d13cf7c8ded38009610548b749c800003"

      def install
        bin.install "fq"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/wader/fq/releases/download/v0.11.0/fq_0.11.0_macos_arm64.zip"
      sha256 "c1186ad2449d1ac6328be565d7825f52778b73c34caf93dbf5bfd9d80b7171ba"

      def install
        bin.install "fq"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/wader/fq/releases/download/v0.11.0/fq_0.11.0_linux_amd64.tar.gz"
      sha256 "0cb381f085503cf676b92c8db89a8523519085601ef97b01873e8f5d55b99b05"

      def install
        bin.install "fq"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/wader/fq/releases/download/v0.11.0/fq_0.11.0_linux_arm64.tar.gz"
      sha256 "37f29f465fad4ad3ffe384635235b01c6879f54f9f7f9547ac4e6f9adfaa0b16"

      def install
        bin.install "fq"
      end
    end
  end

  test do
    system "#{bin}/fq -v"
  end
end
