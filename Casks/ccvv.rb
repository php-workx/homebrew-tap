cask "ccvv" do
  version "1.5.0"
  sha256 "6aae65c77460f215152cc8e7d431c55520fa5bc8936b7003fbc8733ddb94ef32"

  url "https://github.com/php-workx/ccvv/releases/download/v#{version}/ccvv-#{version}.zip"
  name "ccvv"
  desc "Clean up clipboard text while preserving markdown structure"
  homepage "https://github.com/php-workx/ccvv"

  depends_on macos: :ventura

  app "ccvv.app"
  binary "ccvv.app/Contents/MacOS/ccvv-cli", target: "ccvv"
end
