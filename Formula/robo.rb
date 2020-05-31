class Robo < Formula
  desc "Modern task runner for PHP"
  homepage "https://robo.li"
  url "https://github.com/consolidation/Robo/releases/download/2.1.0/robo.phar"
  sha256 "9cc8d6f8a0abc022641cf8731f972447ea6b39b20071460e5aa06cae6b724da9"
  depends_on "php"

  def install
    bin.install "robo.phar" => "robo"
  end

  test do
    system "#{bin}/robo", "--version"
  end
end
