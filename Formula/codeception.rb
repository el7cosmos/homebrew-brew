class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/releases/4.1.20210201/codecept.phar"
  version "4.1.17"
  sha256 "5ead8f8f25c90e9cf5383e4c6f8d9c503f12ec924ba03a2e4aa9c483ebc154b9"
  license "MIT"

  livecheck do
    url "https://github.com/Codeception/Codeception"
  end

  bottle :unneeded

  depends_on "php"

  def install
    bin.install "codecept.phar" => "codecept"
  end

  test do
    system "#{bin}/codecept", "--version"
  end
end
