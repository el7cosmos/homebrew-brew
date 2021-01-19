class DrupalConsoleLauncher < Formula
  desc "DrupalConsole global executable aka Launcher"
  homepage "https://drupalconsole.com/"
  url "https://github.com/hechoendrupal/drupal-console-launcher/releases/download/1.9.7/drupal.phar"
  sha256 "924987c9c921a2ea2fe235b9276390a51105d8a0f686c4e7aed13df342b9bc91"
  license "GPL-2.0-or-later"

  def install
    bin.install "drupal.phar" => "drupal"
  end

  test do
    system "#{bin}/drupal", "--version"
  end
end
