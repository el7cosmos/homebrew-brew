class DrushLauncher < Formula
  desc "Small wrapper around Drush for your global $PATH"
  homepage "https://github.com/drush-ops/drush-launcher"
  url "https://github.com/drush-ops/drush-launcher/releases/download/0.9.3/drush.phar"
  sha256 "b3b4f8efc1d5f721efc3f58274d3c39d8f2eb1b71012b8272f9e5037b7994d67"
  license "GPL-2.0-or-later"

  livecheck do
    url :stable
  end

  depends_on "php"

  def install
    bin.install "drush.phar" => "drush"
  end

  test do
    system "#{bin}/drush", "--drush-launcher-version"
  end
end
