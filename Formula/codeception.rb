class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/codecept.phar"
  version "2.5.1"
  sha256 "bf23cb61d8e0bac81a3c6044bf9377f361fa0c8a0ec24694caca80453d84e8a4"
  depends_on "php"

  def install
    bin.install "codecept.phar" => "codecept"
  end

  test do
    system "#{bin}/codecept", "--version"
  end
end
