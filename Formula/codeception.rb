class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/releases/4.1.20210126/codecept.phar"
  version "4.1.16"
  sha256 "ed4519ab0132ba2a32ec1283350868567f308369d86cc0279214028e41395720"
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
