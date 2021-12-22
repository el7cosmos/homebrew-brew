class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/releases/4.1.20211221/codecept.phar"
  version "4.1.26"
  sha256 "0f25395279a8b29b36f2339a844f3bc1855695f06168d760a34fa5263b7c06b0"
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
