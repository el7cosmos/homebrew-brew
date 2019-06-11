class Robo < Formula
  desc "Modern task runner for PHP"
  homepage "https://robo.li"
  url "https://github.com/consolidation/Robo/releases/download/1.4.9/robo.phar"
  sha256 "373364b7149645b11f1cfc80752d476ee4b989af5662b6f668b0cb451afb6afd"
  depends_on "php"

  def install
    bin.install "robo.phar" => "robo"
  end

  test do
    system "#{bin}/robo", "--version"
  end
end
