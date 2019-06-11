class DrupalConsoleLauncher < Formula
  desc "DrupalConsole global executable aka Launcher"
  homepage "https://drupalconsole.com/"
  url "https://github.com/hechoendrupal/drupal-console-launcher/releases/download/1.9.0/drupal.phar"
  sha256 "59462fcbed0aa59892148563fccefd05a3d9fc366ec2f8620ab1f59a9e1d1408"

  def install
    bin.install "drupal.phar" => "drupal"
  end

  test do
    system "#{bin}/drupal", "--version"
  end
end
