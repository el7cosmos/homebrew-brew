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
