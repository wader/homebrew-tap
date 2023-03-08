# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fq < Formula
  desc "jq for binary formats"
  homepage "https://github.com/wader/fq"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wader/fq/releases/download/v0.4.0/fq_0.4.0_macos_arm64.zip"
      sha256 "c128579bcae99f6da1d31ef03e8a19db8ddf333615b120c4ee069ced9fe85c39"

      def install
        bin.install "fq"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wader/fq/releases/download/v0.4.0/fq_0.4.0_macos_amd64.zip"
      sha256 "450242ba8ee8e160a30eb35d3df34a1c03639d481f9a347a4e248307ca4716e1"

      def install
        bin.install "fq"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/wader/fq/releases/download/v0.4.0/fq_0.4.0_linux_arm64.tar.gz"
      sha256 "b7047fac5928889a060641789f3d2d8ad841ac8de8359b8ea82655906c751a0c"

      def install
        bin.install "fq"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/wader/fq/releases/download/v0.4.0/fq_0.4.0_linux_amd64.tar.gz"
      sha256 "4ab194a29f7da6d04d620a3b022a7bbc5f2cdd756a859f15a1443fbc9c774fcf"

      def install
        bin.install "fq"
      end
    end
  end

  test do
    system "#{bin}/fq -v"
  end
end
