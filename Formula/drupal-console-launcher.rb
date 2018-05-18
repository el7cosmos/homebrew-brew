class DrupalConsoleLauncher < Formula
  desc "DrupalConsole global executable aka Launcher"
  homepage "https://drupalconsole.com/"
  url "https://github.com/hechoendrupal/drupal-console-launcher/releases/download/1.8.0/drupal.phar"
  sha256 "1c9bef3d3e4f70633d5004e3a3d86d90630df7cf97dab46d0175855796f934da"

  def install
    bin.install "drupal.phar" => "drupal"
  end

  test do
    system "#{bin}/drupal", "--version"
  end
end
