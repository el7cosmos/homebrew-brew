class DrushLauncher < Formula
  desc "Small wrapper around Drush for your global $PATH"
  homepage "https://github.com/drush-ops/drush-launcher"
  url "https://github.com/drush-ops/drush-launcher/releases/download/0.10.1/drush.phar"
  sha256 "c6e3e520a33ac7790ab37e5af0fd91fc1108f0830a3a5ebe5b7c36e8782bea30"
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
