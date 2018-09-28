class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://github.com/Codeception/Codeception/archive/2.5.0.tar.gz"
  version "2.5.0"
  sha256 "ddfd2df45790640063e7c3ddc391306a68fde473f83516a23db95369e04ece30"
  depends_on "php"

  def install
    bin.install "codecept.phar" => "codecept"
  end

  test do
    system "#{bin}/codecept", "--version"
  end
end
