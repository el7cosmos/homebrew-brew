class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/codecept.phar"
  version "2.4.6"
  sha256 "e41ba47e3576e72b8bd806e11d438a6155198f183cf7efd459e5e575faf8be36"
  depends_on "php"

  def install
    bin.install "codecept.phar" => "codecept"
  end

  test do
    system "#{bin}/codecept", "--version"
  end
end
