class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/releases/4.1.20201116/codecept.phar"
  version "4.1.12"
  sha256 "9f0bd9fdffb1e0e3086fa229694f40e4a7586a0dfc15433c4ca7c7db5f06caff"
  license "MIT"

  depends_on "php"

  def install
    bin.install "codecept.phar" => "codecept"
  end

  test do
    system "#{bin}/codecept", "--version"
  end
end
