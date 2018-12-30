class Robo < Formula
  desc "Modern task runner for PHP"
  homepage "https://robo.li"
  url "https://github.com/consolidation/Robo/releases/download/1.3.4/robo.phar"
  sha256 "6a6381ebbda3b2552f722c1c80a3b60764bce526a8a3f2dea8028296480eb596"
  depends_on "php"

  def install
    bin.install "robo.phar" => "robo"
  end

  test do
    system "#{bin}/robo", "--version"
  end
end
