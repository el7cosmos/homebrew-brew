class Robo < Formula
  desc "Modern task runner for PHP"
  homepage "https://robo.li"
  url "https://github.com/consolidation/Robo/archive/2.2.2.tar.gz"
  sha256 "fdcf9acbe389a3309dda9f85cf0bd4085c6b5317e94835e8c8594e7193da5080"
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
