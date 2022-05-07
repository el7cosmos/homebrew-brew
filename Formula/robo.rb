class Robo < Formula
  desc "Modern task runner for PHP"
  homepage "https://robo.li"
  url "https://github.com/consolidation/Robo/archive/3.0.10.tar.gz"
  sha256 "749c8e62976ff43632a26c5f6513e325e4cf1153ceb1c54a1bb0c14e6ac87d2b"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    sha256 cellar: :any_skip_relocation, monterey: "af2c5b1fe30ac9dbe2596e3b60b265d0849cb14cc998a2b1ce5ca031883d69a3"
    sha256 cellar: :any_skip_relocation, big_sur:  "9b1351f6ac15aac1777ea1fd2a379d74a296d9baf58e6de6a60bbc45e296da99"
    sha256 cellar: :any_skip_relocation, catalina: "95c267f5762e1ff18e92241fab35d060bc5f9bd1515138f57234abbac6d27dba"
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
