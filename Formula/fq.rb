# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fq < Formula
  desc "jq for binary formats"
  homepage "https://github.com/wader/fq"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/wader/fq/releases/download/v0.13.0/fq_0.13.0_macos_amd64.zip"
      sha256 "574a61bf8782ad58ab6125b2bb5ffde6879c500e5fff4a01109c263cfdd9038a"

      def install
        bin.install "fq"
      end
    end
    on_arm do
      url "https://github.com/wader/fq/releases/download/v0.13.0/fq_0.13.0_macos_arm64.zip"
      sha256 "d8031b6e80b8f2b6f37a337e159cf2486b4ee0dc06749da11f04f1b0fef11099"

      def install
        bin.install "fq"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/wader/fq/releases/download/v0.13.0/fq_0.13.0_linux_amd64.tar.gz"
        sha256 "777756995e34edfd9e4091eb92cb89f8491657457d3e5f47db0106b7a680f621"

        def install
          bin.install "fq"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/wader/fq/releases/download/v0.13.0/fq_0.13.0_linux_arm64.tar.gz"
        sha256 "c90bde280de2d7abfc870a1f493b5bc1e04c5a6a132f27b9dbaa91e5fdfede0f"

        def install
          bin.install "fq"
        end
      end
    end
  end

  test do
    system "#{bin}/fq -v"
  end
end
