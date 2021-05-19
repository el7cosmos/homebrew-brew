class Codeception < Formula
  desc "Full-stack testing PHP framework"
  homepage "https://codeception.com"
  url "https://codeception.com/releases/4.1.20210402/codecept.phar"
  version "4.1.20"
  sha256 "a63039cf360b6985ea1df079c9a712ef2709dc8abc53c437abe65b24a8568045"
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
