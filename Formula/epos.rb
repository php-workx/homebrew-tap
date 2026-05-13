class Epos < Formula
  desc "A task and issue tracker for AI agents and their humans"
  homepage "https://github.com/php-workx/epos"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/php-workx/epos/releases/download/v0.3.0/epos_0.3.0_darwin_arm64.tar.gz"
      sha256 "f43dd731af6d8c71ac1372643b0cd00d574cbc2a85a9b6ff2f0cb65f7ca1640f"
    else
      url "https://github.com/php-workx/epos/releases/download/v0.3.0/epos_0.3.0_darwin_amd64.tar.gz"
      sha256 "2111c0677ed683b19947de7e1dfec8aa4e991995af91cf59db08b8800f4d5b24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/php-workx/epos/releases/download/v0.3.0/epos_0.3.0_linux_arm64.tar.gz"
      sha256 "3e2f93b1bafd7eff6d0de42d503fffb1ef0f16a3fd24952ef7a6d6c2d956c20b"
    else
      url "https://github.com/php-workx/epos/releases/download/v0.3.0/epos_0.3.0_linux_amd64.tar.gz"
      sha256 "52f28e6d7dfa7315af8d6fa0f4fa6bd45e7764e7b3c9fbabc0630818272f4ce1"
    end
  end

  def install
    bin.install "epos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/epos --version")
  end
end
