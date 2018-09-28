class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/codecept.phar"
  version "2.5.0"
  sha256 "afcbfe435714b99309e109cba268b9397c22922f4518dc0ba96bf2bc6fe5d50b"
  depends_on "php"

  def install
    bin.install "codecept.phar" => "codecept"
  end

  test do
    system "#{bin}/codecept", "--version"
  end
end
