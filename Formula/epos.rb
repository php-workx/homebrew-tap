class Epos < Formula
  desc "A task and issue tracker for AI agents and their humans"
  homepage "https://github.com/php-workx/epos"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/php-workx/epos/releases/download/v0.2.5/epos_0.2.5_darwin_arm64.tar.gz"
      sha256 "858bc3e2de8f5e0586145a5cb542d1a0ef0127614575ae0cd15ee2dccf533109"
    else
      url "https://github.com/php-workx/epos/releases/download/v0.2.5/epos_0.2.5_darwin_amd64.tar.gz"
      sha256 "10b7b6660ea89e38c6dcce680061088805d55dcae94449bd68c58d3cd6c2ad4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/php-workx/epos/releases/download/v0.2.5/epos_0.2.5_linux_arm64.tar.gz"
      sha256 "a1ef24d124fa55776aa73826a1da28ab88e20363e4c72522001ca10abbab33e8"
    else
      url "https://github.com/php-workx/epos/releases/download/v0.2.5/epos_0.2.5_linux_amd64.tar.gz"
      sha256 "01953be6e095ed45cb02ea941f4343e2d2bf9348af94097b59ba533b079a48f6"
    end
  end

  def install
    bin.install "epos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/epos --version")
  end
end
