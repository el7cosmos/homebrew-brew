class DrushLauncher < Formula
  desc "Small wrapper around Drush for your global $PATH"
  homepage "https://github.com/drush-ops/drush-launcher"
  url "https://github.com/drush-ops/drush-launcher/releases/download/0.7.3/drush.phar"
  sha256 "933fba289d593da6ed39f3f5cbf870867aa31df4ee039696a890a3602a29f2b8"
  license "GPL-2.0-or-later"

  def install
    bin.install "drush.phar" => "drush"
  end

  test do
    system "#{bin}/drush", "--drush-launcher-version"
  end
end
