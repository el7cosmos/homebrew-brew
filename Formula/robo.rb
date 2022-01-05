class Robo < Formula
  desc "Modern task runner for PHP"
  homepage "https://robo.li"
  url "https://github.com/consolidation/Robo/archive/3.0.7.tar.gz"
  sha256 "bd26425e17748a58c5d85226a6b2c36626fe2e676b1397faa8a3c86febb907a2"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    sha256 cellar: :any_skip_relocation, big_sur:  "969bd66de572cbb99fd697a1ad5ecd36812af6b3b1f3890385a9c35684b09b23"
    sha256 cellar: :any_skip_relocation, catalina: "62fd0e31e23af0eb803a8ac23f84e60660592992d2a5daf3471ecf9f89607079"
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
