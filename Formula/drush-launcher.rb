class DrushLauncher < Formula
  desc "Small wrapper around Drush for your global $PATH"
  homepage "https://github.com/drush-ops/drush-launcher"
  url "https://github.com/drush-ops/drush-launcher/releases/download/0.9.0/drush.phar"
  sha256 "fd75f71018707adec0b6203aa2517b7a3cdb955c3b2db4620a6222d5a672a6f7"
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
