class Epos < Formula
  desc "A task and issue tracker for AI agents and their humans"
  homepage "https://github.com/php-workx/epos"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/php-workx/epos/releases/download/v0.2.4/epos_0.2.4_darwin_arm64.tar.gz"
      sha256 "429db708efce5cc123e38aef868c05048bec2299b9eac4f35bd1877525ccd49d"
    else
      url "https://github.com/php-workx/epos/releases/download/v0.2.4/epos_0.2.4_darwin_amd64.tar.gz"
      sha256 "d08a03c645a5ecde61091f3f965acc01cd4134aa28c7486be348fea0e1bc521f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/php-workx/epos/releases/download/v0.2.4/epos_0.2.4_linux_arm64.tar.gz"
      sha256 "06106cd85839d279f11b3320381ab2ed9913820b115e5399db81c3d5d52a4cd3"
    else
      url "https://github.com/php-workx/epos/releases/download/v0.2.4/epos_0.2.4_linux_amd64.tar.gz"
      sha256 "cb6184a29c31021c1574e2936dac858eb7d46f8912dc61fdb1df250fc6c74a25"
    end
  end

  def install
    bin.install "epos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/epos --version")
  end
end
