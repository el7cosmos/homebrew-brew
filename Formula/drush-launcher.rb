class DrushLauncher < Formula
  desc "Small wrapper around Drush for your global $PATH"
  homepage "https://github.com/drush-ops/drush-launcher"
  url "https://github.com/drush-ops/drush-launcher/releases/download/0.8.0/drush.phar"
  sha256 "97e64b94588eeca5f97ffcb0595c7e3988e685651d898d65c3ae07ca8f9c94c6"
  license "GPL-2.0-or-later"

  livecheck do
    url :stable
  end

  bottle :unneeded

  def install
    bin.install "drush.phar" => "drush"
  end

  test do
    system "#{bin}/drush", "--drush-launcher-version"
  end
end
