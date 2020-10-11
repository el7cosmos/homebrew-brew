class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/releases/4.1.20200828/codecept.phar"
  version "4.1.7"
  sha256 "3fdcf81cd5b9e15e89862f1a1896543dfe5e48661da032d3cd67c49f11736e62"
  license "MIT"

  depends_on "php"

  def install
    bin.install "codecept.phar" => "codecept"
  end

  test do
    system "#{bin}/codecept", "--version"
  end
end
