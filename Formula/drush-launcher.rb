class DrushLauncher < Formula
  desc "Small wrapper around Drush for your global $PATH"
  homepage "https://github.com/drush-ops/drush-launcher"
  url "https://github.com/drush-ops/drush-launcher.git",
       tag: "0.9.1"
  license "GPL-2.0-or-later"
  head "https://github.com/drush-ops/drush-launcher.git",
       tag: "0.9.1"

  livecheck do
    url :stable
  end

  bottle do
    root_url "https://ghcr.io/v2/el7cosmos/brew"
    rebuild 1
    sha256 cellar: :any_skip_relocation, big_sur:  "fad405732f06c492ef96b37895b6c5ac43dc39a0b607e7078ab4902c2be6bf23"
    sha256 cellar: :any_skip_relocation, catalina: "0e52b1fa396f83f327896066dafc4074cfcb8a924ccaf49a0f661954807baeb7"
  end

  depends_on "composer" => :build
  depends_on "humbug/box/box" => :build
  depends_on "php"

  def install
    system "composer", "install"
    system "box", "compile"
    bin.install "drush.phar" => "drush"
  end

  test do
    system "#{bin}/drush", "--drush-launcher-version"
  end
end
