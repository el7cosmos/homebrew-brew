class Robo < Formula
  desc "Modern task runner for PHP"
  homepage "https://robo.li"
  url "https://github.com/consolidation/Robo/releases/download/1.3.0/robo.phar"
  sha256 "a0581813feba393e37f151cf1a154988e8805bd6c51980a331842e5891c4211d"
  depends_on "php"

  def install
    bin.install "robo.phar" => "robo"
  end

  test do
    system "#{bin}/robo", "--version"
  end
end
