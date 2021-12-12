class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/releases/4.1.20210906/codecept.phar"
  version "4.1.23"
  sha256 "d6c89043be55845e23d072cc1e26c6ea578a2fe51330af154574315df95a132e"
  license "MIT"

  livecheck do
    url "https://github.com/Codeception/Codeception"
  end

  depends_on "php"

  def install
    bin.install "codecept.phar" => "codecept"
  end

  test do
    system "#{bin}/codecept", "--version"
  end
end
