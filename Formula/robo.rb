class Robo < Formula
  desc "Modern task runner for PHP"
  homepage "https://robo.li"
  url "https://github.com/consolidation/Robo/releases/download/2.2.1/robo.phar"
  sha256 "eb3e919d73b2be4cb1a2daebf72687d7f005fb1d11c3acea09935033388cf4b9"
  depends_on "php"

  def install
    bin.install "robo.phar" => "robo"
  end

  test do
    system "#{bin}/robo", "--version"
  end
end
