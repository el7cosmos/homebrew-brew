class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/releases/4.1.20210528/codecept.phar"
  version "4.1.21"
  sha256 "e89e3004227365c423add6cc25c8dc9c659604f93ed715715c52afa343fddce2"
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
