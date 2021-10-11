class Robo < Formula
  desc "Modern task runner for PHP"
  homepage "https://robo.li"
  url "https://github.com/consolidation/Robo/archive/3.0.6.tar.gz"
  sha256 "5653da8eaafb3c1468174c36135357f567e30dd3c02e8db958e9c1d06ed40bb7"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    root_url "https://github.com/el7cosmos/homebrew-brew/releases/download/robo-3.0.3"
    sha256 cellar: :any_skip_relocation, big_sur:  "32b4a26e68ed8ccf236a4ef9758cfbcd2538a80b7c12ab4e2f5ac7c159164b81"
    sha256 cellar: :any_skip_relocation, catalina: "f8f31020db243b97aed671d3b4a3ed3eb249a7c906d7a8f872c980da40832369"
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
