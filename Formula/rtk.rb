# typed: false
# frozen_string_literal: true

class Rtk < Formula
  desc "High-performance CLI proxy that reduces LLM token consumption (Context Zip fork)"
  homepage "https://github.com/php-workx/agentic-rtk"
  version "0.38.0-fork.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/php-workx/agentic-rtk/releases/download/v0.38.0-fork.1/rtk-x86_64-apple-darwin.tar.gz"
      sha256 "17128c8194e0d4aab57bb37dc00c89b800e46a8f1adfeec754e6248d119e6fbf"

      def install
        bin.install "rtk"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/php-workx/agentic-rtk/releases/download/v0.38.0-fork.1/rtk-aarch64-apple-darwin.tar.gz"
      sha256 "3c688b168e0736b5b050c0a5de2cc698b0b602ea136dab88f252243b57c0aa31"

      def install
        bin.install "rtk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/php-workx/agentic-rtk/releases/download/v0.38.0-fork.1/rtk-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c161c2b03c3713feb8eff0e14a5d68b4785d0e5c4a9817acdb3fd52fa9c1a31c"
      def install
        bin.install "rtk"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/php-workx/agentic-rtk/releases/download/v0.38.0-fork.1/rtk-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f463613674878e5acadfb2253c5deb14f918440647b13844a7d9761c5731730c"
      def install
        bin.install "rtk"
      end
    end
  end

  test do
    system "#{bin}/rtk", "--version"
  end
end
