class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/releases/4.1.20201103/codecept.phar"
  version "4.1.9"
  sha256 "42e521217c91cb243bfebe333da49a113be3298c23d543109eb00ca620bb21c7"
  license "MIT"

  depends_on "php"

  def install
    bin.install "codecept.phar" => "codecept"
  end

  test do
    system "#{bin}/codecept", "--version"
  end
end
