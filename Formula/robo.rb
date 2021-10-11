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
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    sha256 cellar: :any_skip_relocation, big_sur:  "95d87f4c6d1328445f4c6a585a392ea605792c2861fd47d9301b8a8b548a1d2b"
    sha256 cellar: :any_skip_relocation, catalina: "0131386d05da22383574fc3080487f304d02083ffd43c59a9f9c03a3e2214b43"
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
