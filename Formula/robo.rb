class Robo < Formula
  desc "Modern task runner for PHP"
  homepage "https://robo.li"
  url "https://github.com/consolidation/Robo/archive/3.0.3.tar.gz"
  sha256 "25d437ef8b6da12f3c302d6aa7bae7d852b6376a668348630c27ab9aa72d3668"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    root_url "https://dl.bintray.com/el7cosmos/bottle-brew"
    sha256 cellar: :any_skip_relocation, big_sur: "f3893509fe549aa511d9f2bee612b9266fb67d75afe3c99cb6d937cdf03f1916"
  end

  depends_on "composer"
  depends_on "php"

  def install
    system "composer", "install"
    system "php", "-dphar.readonly=Off", "robo", "phar:build"
    bin.install "robo.phar" => "robo"
  end

  test do
    system "#{bin}/robo", "--version"
  end
end
