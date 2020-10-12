class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/releases/4.1.20201011/codecept.phar"
  version "4.1.8"
  sha256 "5a11e299fc27faee442cc1222ea49226e5f653e8f62d8296aa5c7fd3482f8ab8"
  license "MIT"

  depends_on "php"

  def install
    bin.install "codecept.phar" => "codecept"
  end

  test do
    system "#{bin}/codecept", "--version"
  end
end
