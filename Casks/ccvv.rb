cask "ccvv" do
  version "1.5.3"
  sha256 "d937f31a0c174a0b0ee4280380c681a448ca03f8272e1e3348cdcbc7cd7e25da"

  url "https://github.com/php-workx/ccvv/releases/download/v#{version}/ccvv-#{version}.zip"
  name "ccvv"
  desc "Clean up clipboard text while preserving markdown structure"
  homepage "https://github.com/php-workx/ccvv"

  depends_on macos: :ventura

  app "ccvv.app"
  binary "ccvv.app/Contents/MacOS/ccvv-cli", target: "ccvv"
end
