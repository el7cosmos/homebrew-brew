class Robo < Formula
  desc "Modern task runner for PHP"
  homepage "https://robo.li"
  url "https://github.com/consolidation/Robo/releases/download/2.0.6/robo.phar"
  sha256 "4f831009e0911a6878fff6111fc44030b3adee6db6b05ffeffbee9e873defe40"
  depends_on "php"

  def install
    bin.install "robo.phar" => "robo"
  end

  test do
    system "#{bin}/robo", "--version"
  end
end
